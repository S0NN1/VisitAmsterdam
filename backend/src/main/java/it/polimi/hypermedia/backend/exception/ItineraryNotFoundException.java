package it.polimi.hypermedia.backend.exception;

public class ItineraryNotFoundException extends RuntimeException {
    public ItineraryNotFoundException() {
        super("Itinerary not found!");
    }
}
