package it.polimi.hypermedia.backend.controllers;

import it.polimi.hypermedia.backend.entities.Event;
import it.polimi.hypermedia.backend.entities.Itinerary;
import it.polimi.hypermedia.backend.entities.PointOfInterest;
import it.polimi.hypermedia.backend.entities.Service;
import it.polimi.hypermedia.backend.model.dto.SearchDto;
import it.polimi.hypermedia.backend.repositories.EventRepository;
import it.polimi.hypermedia.backend.repositories.ItineraryRepository;
import it.polimi.hypermedia.backend.repositories.PointOfInterestRepository;
import it.polimi.hypermedia.backend.repositories.ServiceRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/v1/search")
public class SearchController {

    EventRepository eventRepository;
    ItineraryRepository itineraryRepository;
    PointOfInterestRepository pointOfInterestRepository;
    ServiceRepository serviceRepository;

    public SearchController(EventRepository eventRepository, ItineraryRepository itineraryRepository, PointOfInterestRepository pointOfInterestRepository, ServiceRepository serviceRepository) {
        this.eventRepository = eventRepository;
        this.itineraryRepository = itineraryRepository;
        this.pointOfInterestRepository = pointOfInterestRepository;
        this.serviceRepository = serviceRepository;
    }

    @GetMapping("search")
    public SearchDto search(@RequestParam String input) {
        List<Event> events = eventRepository.findByNameContainingIgnoreCase(input);
        List<Itinerary> itineraries = itineraryRepository.findByNameContainingIgnoreCase(input);
        List<PointOfInterest> pointOfInterests = pointOfInterestRepository.findByNameContainingIgnoreCase(input);
        List<Service> services = serviceRepository.findByNameContainingIgnoreCase(input);
        return new SearchDto(events, itineraries, pointOfInterests, services);
    }
}
