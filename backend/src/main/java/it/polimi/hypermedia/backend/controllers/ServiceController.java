package it.polimi.hypermedia.backend.controllers;

import it.polimi.hypermedia.backend.entities.Service;
import it.polimi.hypermedia.backend.exception.ServiceAlreadyFoundException;
import it.polimi.hypermedia.backend.exception.WrongCoordinatesException;
import it.polimi.hypermedia.backend.model.enums.ServiceType;
import it.polimi.hypermedia.backend.repositories.ServiceRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/services")
public class ServiceController {
    private final ServiceRepository serviceRepository;

    public ServiceController(ServiceRepository serviceRepository) {
        this.serviceRepository = serviceRepository;
    }

    @PostMapping("/new")
    public Service createService(@RequestBody Service service) {
        if (serviceRepository.findByLatitudeAndLongitude(service.getLatitude(), service.getLongitude()).isPresent()) {
            throw new ServiceAlreadyFoundException(service.getLatitude(), service.getLongitude());
        }
        if (service.getLatitude() < -90 || service.getLatitude() > 90 || service.getLongitude() < -180 || service.getLongitude() > 180) {
            throw new WrongCoordinatesException(service.getLatitude(), service.getLongitude());
        }
        return serviceRepository.save(service);
    }

    @GetMapping("/getByType")
    public List<Service> getServiceByType(@RequestParam ServiceType type) {
        return serviceRepository.findAllByServiceType(type);
    }
}