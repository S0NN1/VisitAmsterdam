package it.polimi.hypermedia.backend.exception;

public class InvalidFormatException extends RuntimeException{
    public InvalidFormatException(){
        super("Invalid request format!");
    }
}
