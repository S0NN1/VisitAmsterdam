package it.polimi.hypermedia.backend.exception;

public class PointOfInterestAlreadyFoundException extends RuntimeException{
    public PointOfInterestAlreadyFoundException(double latitude, double longitude){
        super("Point of interests already exists at " + latitude + " " + longitude);
    }
}