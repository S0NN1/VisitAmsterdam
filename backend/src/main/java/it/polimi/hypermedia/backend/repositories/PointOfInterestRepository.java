package it.polimi.hypermedia.backend.repositories;

import it.polimi.hypermedia.backend.entities.Itinerary;
import it.polimi.hypermedia.backend.entities.PointOfInterest;
import it.polimi.hypermedia.backend.entities.PointOfInterestTag;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface PointOfInterestRepository extends JpaRepository<PointOfInterest, Long> {
    List<PointOfInterest> findAllByTagsIn(List<PointOfInterestTag> tags);
    List<PointOfInterest> findAllByNameContaining(String name);
    Optional<PointOfInterest> findByLatitudeAndLongitude(double latitude, double longitude);
    List<PointOfInterest> findAllByOrderByName();

    List<PointOfInterest> findByNameContainingIgnoreCase(@Param("input") String input);
}
