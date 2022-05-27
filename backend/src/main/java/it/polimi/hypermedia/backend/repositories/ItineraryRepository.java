package it.polimi.hypermedia.backend.repositories;

import it.polimi.hypermedia.backend.entities.Itinerary;
import it.polimi.hypermedia.backend.entities.ItineraryTag;
import it.polimi.hypermedia.backend.entities.PointOfInterest;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ItineraryRepository extends JpaRepository<Itinerary, Long> {

    List<Itinerary> findAllByTagsIn(List<ItineraryTag> tags);

    List<Itinerary> findAllByNameContaining(String name);

    List<Itinerary> findAllByStops_IdContaining(Long id);
}
