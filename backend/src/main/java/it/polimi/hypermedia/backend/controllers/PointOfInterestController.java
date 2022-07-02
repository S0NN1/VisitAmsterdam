package it.polimi.hypermedia.backend.controllers;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.fge.jsonpatch.JsonPatch;
import com.github.fge.jsonpatch.JsonPatchException;
import it.polimi.hypermedia.backend.entities.PointOfInterest;
import it.polimi.hypermedia.backend.entities.PointOfInterestTag;
import it.polimi.hypermedia.backend.exception.InvalidFormatException;
import it.polimi.hypermedia.backend.exception.PointOfInterestAlreadyFoundException;
import it.polimi.hypermedia.backend.exception.PointOfInterestNotFoundException;
import it.polimi.hypermedia.backend.exception.WrongCoordinatesException;
import it.polimi.hypermedia.backend.repositories.PointOfInterestRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/v1/points-of-interest")
public class PointOfInterestController {
    private final PointOfInterestRepository poiRepository;

    public PointOfInterestController(PointOfInterestRepository repository) {
        this.poiRepository = repository;
    }

    @PostMapping(value = "/add", consumes = "application/json", produces = "application/json")
    PointOfInterest newPointOfInterest(@RequestBody PointOfInterest newPointOfInterest) {
        if (poiRepository.findByLatitudeAndLongitude(newPointOfInterest.getLatitude(), newPointOfInterest.getLongitude()).isPresent()) {
            throw new PointOfInterestAlreadyFoundException(newPointOfInterest.getLatitude(), newPointOfInterest.getLongitude());
        }
        if (newPointOfInterest.getLatitude() < -90 || newPointOfInterest.getLatitude() > 90 || newPointOfInterest.getLongitude() < -180 || newPointOfInterest.getLongitude() > 180) {
            throw new WrongCoordinatesException(newPointOfInterest.getLatitude(), newPointOfInterest.getLongitude());
        }
        return poiRepository.save(newPointOfInterest);
    }

    @GetMapping(value = "/getAll", produces = "application/json")
    List<PointOfInterest> allPointOfInterests() {
        return poiRepository.findAllByOrderByName();
    }

    @GetMapping(value = "/getAllByName", produces = "application/json")
    List<PointOfInterest> allPointOfInterestsByName(@RequestParam String name) {
        return poiRepository.findAllByNameContaining(name);
    }

    @GetMapping(value = "/getAllByTags", produces = "application/json")
    List<PointOfInterest> allPointOfInterestsByTags(@RequestParam List<PointOfInterestTag> tags) {
        return poiRepository.findAllByTagsIn(tags);
    }

    @GetMapping(value = "/get", produces = "application/json")
    PointOfInterest pointOfInterests(@RequestParam Long id) {
        if (poiRepository.findById(id).isPresent()) {
            return poiRepository.findById(id).get();
        }
        throw new PointOfInterestNotFoundException();
    }

    @PatchMapping(path = "/{id}", consumes = "application/json-patch+json")
    public PointOfInterest updatePointOfInterest(@PathVariable Long id, @RequestBody JsonPatch patch) {
        Optional<PointOfInterest> pointOfInterest = poiRepository.findById(id);
        ObjectMapper mapper = new ObjectMapper();
        if (pointOfInterest.isPresent()) {
            PointOfInterest retrievedPointOfInterest = pointOfInterest.get();
            try {
                JsonNode patched = patch.apply(mapper.convertValue(retrievedPointOfInterest, JsonNode.class));
                retrievedPointOfInterest = mapper.treeToValue(patched, PointOfInterest.class);
                poiRepository.save(retrievedPointOfInterest);
                return retrievedPointOfInterest;
            } catch (JsonPatchException | JsonProcessingException e) {
                throw new InvalidFormatException();
            }
        }
        throw new PointOfInterestNotFoundException();
    }
}
