package it.polimi.hypermedia.backend.repositories;

import it.polimi.hypermedia.backend.entities.Service;
import it.polimi.hypermedia.backend.entities.ServiceTag;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface ServiceRepository extends JpaRepository<Service, Long> {
    List<Service> findAllByServiceTag(ServiceTag type);

    Optional<Service> findByLatitudeAndLongitude(double latitude, double longitude);

    List<Service> findAllByOrderByName();

    List<Service> findByNameContainingIgnoreCase(@Param("input") String input);
}
