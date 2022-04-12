package it.polimi.hypermedia.backend.controllers;

import it.polimi.hypermedia.backend.entities.PointOfInterest;
import it.polimi.hypermedia.backend.repositories.PointOfInterestRepository;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/poi")
public class PointOfInterestController {
    private final PointOfInterestRepository poiRepository;

    public PointOfInterestController(PointOfInterestRepository repository) {
        this.poiRepository = repository;
    }

    @PostMapping(value = "/add", consumes = "application/json", produces = "application/json")
    PointOfInterest newPointOfInterest(@RequestBody PointOfInterest newPointOfInterest){
        return poiRepository.save(newPointOfInterest);
    }
}
