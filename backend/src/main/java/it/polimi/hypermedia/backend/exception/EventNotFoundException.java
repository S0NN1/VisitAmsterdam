package it.polimi.hypermedia.backend.exception;

public class EventNotFoundException extends RuntimeException{
    public EventNotFoundException(){
        super("No event was found given this id");
    }
}
