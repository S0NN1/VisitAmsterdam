package it.polimi.hypermedia.backend.advices;

import it.polimi.hypermedia.backend.exception.EventNotFoundException;
import it.polimi.hypermedia.backend.exception.PointOfInterestNotFoundException;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class EventAdvice {

    @ResponseBody
    @ExceptionHandler(EventNotFoundException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    String eventNotFoundHandler(EventNotFoundException ex){
        return "{\n" +
                "   \"error_message\": " +
                "\"" + ex.getMessage() + "\"" +
                "\n}";
    }
}
