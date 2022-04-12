package it.polimi.hypermedia.backend.repositories;

import it.polimi.hypermedia.backend.entities.Event;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface EventRepository extends CrudRepository<Event, Long> {
    List<Event> findAllByName(String name);
}
