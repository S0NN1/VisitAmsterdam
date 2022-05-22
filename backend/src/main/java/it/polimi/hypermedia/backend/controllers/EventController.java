package it.polimi.hypermedia.backend.controllers;

import it.polimi.hypermedia.backend.entities.Event;
import it.polimi.hypermedia.backend.exception.EventNotFoundException;
import it.polimi.hypermedia.backend.repositories.EventRepository;
import org.springframework.web.bind.annotation.*;

import java.sql.Date;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/v1/event")
public class EventController {
    private final EventRepository eventRepository;

    public EventController(EventRepository eventRepository) {
        this.eventRepository = eventRepository;
    }

    @PostMapping(value = "/add", consumes = "application/json", produces = "application/json")
    public Event createEvent(@RequestBody Event newEvent) {
        return eventRepository.save(newEvent);
    }

    @GetMapping(value = "/getAll")
    public List<Event> getAllEvents() {
        return eventRepository.findAll();
    }

    @GetMapping(value = "/getById")
    public Event getById(@RequestParam long id) {
        Optional<Event> event = eventRepository.findById(id);
        if(event.isPresent()) {
            return event.get();
        } else {
            throw new EventNotFoundException();
        }
    }

    @GetMapping(value = "/getUpcoming")
    public List<Event> getUpcomingEvents() {
        return eventRepository.findDistinctByEventDays_DateGreaterThanEqualOrderByEventDays_DateAsc(new Date(new java.util.Date().getTime()));
    }

    @GetMapping(value = "/getHosted")
    public List<Event> getHostedEvents(@RequestParam Long location) {
        return eventRepository.findAllByLocation_IdAndEventDays_DateGreaterThanEqualOrderByEventDays_DateAsc(location, new Date(new java.util.Date().getTime()));
    }
}
