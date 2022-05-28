package it.polimi.hypermedia.backend.repositories;

import it.polimi.hypermedia.backend.entities.ServiceTag;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ServiceTagRepository extends JpaRepository<ServiceTag, Long> {
}
