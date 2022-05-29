package it.polimi.hypermedia.backend.controllers;

import it.polimi.hypermedia.backend.entities.EventTag;
import it.polimi.hypermedia.backend.entities.ItineraryTag;
import it.polimi.hypermedia.backend.entities.PointOfInterestTag;
import it.polimi.hypermedia.backend.entities.ServiceTag;
import it.polimi.hypermedia.backend.repositories.EventTagRepository;
import it.polimi.hypermedia.backend.repositories.ItineraryTagRepository;
import it.polimi.hypermedia.backend.repositories.PointOfInterestTagRepository;
import it.polimi.hypermedia.backend.repositories.ServiceTagRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/tags")
public class TagController {
    private final PointOfInterestTagRepository pointOfInterestTagRepository;
    private final ServiceTagRepository serviceTagRepository;
    private final EventTagRepository eventTagRepository;
    private final ItineraryTagRepository itineraryTagRepository;

    public TagController(PointOfInterestTagRepository pointOfInterestTagRepository, EventTagRepository eventTagRepository, ItineraryTagRepository itineraryTagRepository, ServiceTagRepository serviceTagRepository) {
        this.pointOfInterestTagRepository = pointOfInterestTagRepository;
        this.serviceTagRepository = serviceTagRepository;
        this.eventTagRepository = eventTagRepository;
        this.itineraryTagRepository = itineraryTagRepository;
    }

    @GetMapping("/points-of-interest/getAll")
    public List<PointOfInterestTag> getPoiTags() {
        return pointOfInterestTagRepository.findAll();
    }

    @PostMapping(value = "/points-of-interest/add", consumes = "application/json", produces = "application/json")
    public PointOfInterestTag addPoiTag(@RequestBody PointOfInterestTag tag) {
        pointOfInterestTagRepository.save(tag);
        return tag;
    }

    @GetMapping("/services/getAll")
    public List<ServiceTag> getServiceTags() {
        return serviceTagRepository.findAll();
    }

    @PostMapping(value = "/services/add", consumes = "application/json", produces = "application/json")
    public ServiceTag addServiceTag(@RequestBody ServiceTag tag) {
        serviceTagRepository.save(tag);
        return tag;
    }

    @GetMapping("/events/getAll")
    public List<EventTag> getEventTags() {
        return eventTagRepository.findAll();
    }

    @PostMapping(value = "/events/add", consumes = "application/json", produces = "application/json")
    public EventTag addEventTag(@RequestBody EventTag tag) {
        eventTagRepository.save(tag);
        return tag;
    }

    @GetMapping("/itineraries/getAll")
    public List<ItineraryTag> getItineraryTags() {
        return itineraryTagRepository.findAll();
    }

    @PostMapping(value = "/itineraries/add", consumes = "application/json", produces = "application/json")
    public ItineraryTag addServiceTag(@RequestBody ItineraryTag tag) {
        itineraryTagRepository.save(tag);
        return tag;
    }
}
