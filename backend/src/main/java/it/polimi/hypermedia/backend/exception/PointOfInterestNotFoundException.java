package it.polimi.hypermedia.backend.exception;

public class PointOfInterestNotFoundException extends RuntimeException{
    public PointOfInterestNotFoundException(){
        super("No point of interest found given this id");
    }
}
