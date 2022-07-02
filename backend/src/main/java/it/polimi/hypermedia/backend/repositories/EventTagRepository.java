package it.polimi.hypermedia.backend.repositories;

import it.polimi.hypermedia.backend.entities.EventTag;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EventTagRepository extends JpaRepository<EventTag, Long> {
}
