package it.polimi.hypermedia.backend.advices;

import it.polimi.hypermedia.backend.exception.PointOfInterestAlreadyFoundException;
import it.polimi.hypermedia.backend.exception.PointOfInterestNotFoundException;
import it.polimi.hypermedia.backend.exception.WrongCoordinatesException;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

@ControllerAdvice
public class PointOfInterestAdvice {

    @ResponseBody
    @ExceptionHandler(PointOfInterestAlreadyFoundException.class)
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    String poiAlreadyFoundHandler(PointOfInterestAlreadyFoundException ex){
        return "{\n" +
                "   \"error_message\": " +
                "\"" + ex.getMessage() + "\"" +
                "\n}";
    }

    @ResponseBody
    @ExceptionHandler(WrongCoordinatesException.class)
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    String poiWrongCoordinatesHandler(WrongCoordinatesException ex){
        return "{\n" +
                "   \"error_message\": " +
                "\"" + ex.getMessage() + "\"" +
                "\n}";
    }
    @ResponseBody
    @ExceptionHandler(PointOfInterestNotFoundException.class)
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    String poiNotFoundHandler(PointOfInterestNotFoundException ex){
        return "{\n" +
                "   \"error_message\": " +
                "\"" + ex.getMessage() + "\"" +
                "\n}";
    }
}