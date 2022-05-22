package it.polimi.hypermedia.backend.exception;

public class WrongCoordinatesException extends RuntimeException{
    public WrongCoordinatesException(double latitude, double longitude){
        super("Wrong coordinates either " + latitude + " or " + longitude);
    }
}
