package it.polimi.hypermedia.backend.exception;

public class ServiceAlreadyFoundException extends RuntimeException {
    public ServiceAlreadyFoundException(double latitude, double longitude) {
        super("Service already exists at " + latitude + " " + longitude);
    }
}
