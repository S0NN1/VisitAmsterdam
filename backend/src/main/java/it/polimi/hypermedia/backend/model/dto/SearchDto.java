package it.polimi.hypermedia.backend.model.dto;

import it.polimi.hypermedia.backend.entities.Event;
import it.polimi.hypermedia.backend.entities.Itinerary;
import it.polimi.hypermedia.backend.entities.PointOfInterest;
import it.polimi.hypermedia.backend.entities.Service;

import java.util.List;

public class SearchDto {
    private List<Event> events;
    private List<Itinerary> itineraries;
    private List<PointOfInterest> pointOfInterests;
    private List<Service> services;

    public SearchDto(List<Event> events, List<Itinerary> itineraries, List<PointOfInterest> pointOfInterests, List<Service> services) {
        this.events = events;
        this.itineraries = itineraries;
        this.pointOfInterests = pointOfInterests;
        this.services = services;
    }

    public List<Event> getEvents() {
        return events;
    }

    public void setEvents(List<Event> events) {
        this.events = events;
    }

    public List<Itinerary> getItineraries() {
        return itineraries;
    }

    public void setItineraries(List<Itinerary> itineraries) {
        this.itineraries = itineraries;
    }

    public List<PointOfInterest> getPointOfInterests() {
        return pointOfInterests;
    }

    public void setPointOfInterests(List<PointOfInterest> pointOfInterests) {
        this.pointOfInterests = pointOfInterests;
    }

    public List<Service> getServices() {
        return services;
    }

    public void setServices(List<Service> services) {
        this.services = services;
    }
}
