package it.polimi.hypermedia.backend.controllers;

import it.polimi.hypermedia.backend.entities.EventTag;
import it.polimi.hypermedia.backend.entities.ItineraryTag;
import it.polimi.hypermedia.backend.entities.PointOfInterestTag;
import it.polimi.hypermedia.backend.repositories.EventTagRepository;
import it.polimi.hypermedia.backend.repositories.ItineraryTagRepository;
import it.polimi.hypermedia.backend.repositories.PointOfInterestTagRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/v1/tags")
public class TagController {
    private final PointOfInterestTagRepository pointOfInterestTagRepository;
    //    private final ServiceTagRepository serviceTagRepository;
    private final EventTagRepository eventTagRepository;
    private final ItineraryTagRepository itineraryTagRepository;

    public TagController(PointOfInterestTagRepository pointOfInterestTagRepository, EventTagRepository eventTagRepository, ItineraryTagRepository itineraryTagRepository) {
        this.pointOfInterestTagRepository = pointOfInterestTagRepository;
//        this.serviceTagRepository = serviceTagRepository;
        this.eventTagRepository = eventTagRepository;
        this.itineraryTagRepository = itineraryTagRepository;
    }

    @GetMapping("/pois/getAll")
    public List<PointOfInterestTag> getPoiTags() {
        return pointOfInterestTagRepository.findAll();
    }

//    @GetMapping("/services/getAll")
//    public List<ServiceType> getServiceTags() {
//        return serviceTagRepository.findAll();
//    }

    @GetMapping("/events/getAll")
    public List<EventTag> getEventTags() {
        return eventTagRepository.findAll();
    }

    @GetMapping("/itineraries/getAll")
    public List<ItineraryTag> getItineraryTags() {
        return itineraryTagRepository.findAll();
    }
}
