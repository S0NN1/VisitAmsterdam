package it.polimi.hypermedia.backend.advices;

import it.polimi.hypermedia.backend.exception.PointOfInterestAlreadyFoundException;
import it.polimi.hypermedia.backend.exception.ServiceAlreadyFoundException;
import it.polimi.hypermedia.backend.exception.WrongCoordinatesException;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class ServiceAdvice {

    @ResponseBody
    @ExceptionHandler(ServiceAlreadyFoundException.class)
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    String poiAlreadyFoundHandler(ServiceAlreadyFoundException ex){
        return "{\n" +
                "   \"error_message\": " +
                "\"" + ex.getMessage() + "\"" +
                "\n}";
    }
}
