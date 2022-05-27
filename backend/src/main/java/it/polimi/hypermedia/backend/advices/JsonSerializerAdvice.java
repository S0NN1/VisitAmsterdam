package it.polimi.hypermedia.backend.advices;

import it.polimi.hypermedia.backend.exception.InvalidFormatException;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class JsonSerializerAdvice {
    @ResponseBody
    @ExceptionHandler(InvalidFormatException.class)
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    String invalidRequestFormatHandler(InvalidFormatException ex){
        return "{\n" +
                "   \"error_message\": " +
                "\"" + ex.getMessage() + "\"" +
                "\n}";
    }
}
