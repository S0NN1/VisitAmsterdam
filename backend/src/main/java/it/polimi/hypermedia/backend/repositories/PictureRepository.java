package it.polimi.hypermedia.backend.repositories;

import it.polimi.hypermedia.backend.entities.EventPicture;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PictureRepository extends JpaRepository<EventPicture, Long> {

}
