package it.polimi.hypermedia.backend.advices;

import it.polimi.hypermedia.backend.exception.InvalidFormatException;
import it.polimi.hypermedia.backend.exception.ItineraryNotFoundException;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class ItineraryAdvice {
    @ResponseBody
    @ExceptionHandler(ItineraryNotFoundException.class)
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    String invalidRequestFormatHandler(ItineraryNotFoundException ex) {
        return "{\n" +
                "   \"error_message\": " +
                "\"" + ex.getMessage() + "\"" +
                "\n}";
    }
}
