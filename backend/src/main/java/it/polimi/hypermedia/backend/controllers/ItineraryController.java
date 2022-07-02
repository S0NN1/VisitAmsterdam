package it.polimi.hypermedia.backend.controllers;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.fge.jsonpatch.JsonPatch;
import com.github.fge.jsonpatch.JsonPatchException;
import it.polimi.hypermedia.backend.entities.Itinerary;
import it.polimi.hypermedia.backend.entities.ItineraryTag;
import it.polimi.hypermedia.backend.exception.InvalidFormatException;
import it.polimi.hypermedia.backend.exception.ItineraryNotFoundException;
import it.polimi.hypermedia.backend.repositories.ItineraryRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/v1/itineraries")
public class ItineraryController {
    private final ItineraryRepository itineraryRepository;

    public ItineraryController(ItineraryRepository itineraryRepository) {
        this.itineraryRepository = itineraryRepository;
    }

    @GetMapping(value = "/getAll", produces = "application/json")
    public List<Itinerary> getAllItineraries() {
        return itineraryRepository.findAll();
    }

    @GetMapping(value = "/getAllByTags", produces = "application/json")
    public List<Itinerary> getAllItinerariesByTags(@RequestParam List<ItineraryTag> tags) {
        return itineraryRepository.findAllByTagsIn(tags);
    }

    @GetMapping(value = "/getAllByName", produces = "application/json")
    public List<Itinerary> getAllItinerariesByName(@RequestParam String name) {
        return itineraryRepository.findAllByNameContaining(name);
    }

    @GetMapping(value = "/getAllByStop", produces = "application/json")
    public List<Itinerary> getAllItinerariesByStop(@RequestParam Long id) {
        return itineraryRepository.findAllByStops_IdContaining(id);
    }

    @GetMapping(value = "/get", produces = "application/json")
    public Itinerary getItineraryById(@RequestParam Long id) {
        Optional<Itinerary> itinerary = itineraryRepository.findById(id);
        if (itinerary.isPresent()) {
            return itinerary.get();
        }
        throw new ItineraryNotFoundException();
    }

    @PostMapping(value = "/add", consumes = "application/json", produces = "application/json")
    public Itinerary addItinerary(@RequestBody Itinerary itinerary) {
        itineraryRepository.save(itinerary);
        return itinerary;
    }

    @PatchMapping(path = "/{id}", consumes = "application/json-patch+json")
    public Itinerary updateItinerary(@PathVariable Long id, @RequestBody JsonPatch patch) {
        Optional<Itinerary> pointOfInterest = itineraryRepository.findById(id);
        ObjectMapper mapper = new ObjectMapper();
        if (pointOfInterest.isPresent()) {
            Itinerary retrievedItinerary = pointOfInterest.get();
            try {
                JsonNode patched = patch.apply(mapper.convertValue(retrievedItinerary, JsonNode.class));
                retrievedItinerary = mapper.treeToValue(patched, Itinerary.class);
                itineraryRepository.save(retrievedItinerary);
                return retrievedItinerary;
            } catch (JsonPatchException | JsonProcessingException e) {
                throw new InvalidFormatException();
            }
        }
        throw new ItineraryNotFoundException();
    }
}
