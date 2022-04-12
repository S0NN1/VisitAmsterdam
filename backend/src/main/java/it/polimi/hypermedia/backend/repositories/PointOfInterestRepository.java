package it.polimi.hypermedia.backend.repositories;

import it.polimi.hypermedia.backend.entities.PointOfInterest;
import it.polimi.hypermedia.backend.entities.PointOfInterestTag;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface PointOfInterestRepository extends JpaRepository<PointOfInterest, Long> {
    List<PointOfInterest> findAllByTagsIn(List<PointOfInterestTag> tags);
    Optional<PointOfInterest> findByLatitudeAndLongitude(double latitude, double longitude);
}
