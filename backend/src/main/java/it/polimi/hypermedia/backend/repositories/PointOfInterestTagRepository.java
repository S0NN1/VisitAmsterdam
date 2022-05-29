package it.polimi.hypermedia.backend.repositories;

import it.polimi.hypermedia.backend.entities.PointOfInterestTag;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PointOfInterestTagRepository extends JpaRepository<PointOfInterestTag, Long> {
}
