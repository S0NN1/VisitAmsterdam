package it.polimi.hypermedia.backend.repositories;

import it.polimi.hypermedia.backend.entities.ItineraryTag;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ItineraryTagRepository extends JpaRepository<ItineraryTag, Long> {
}
