package it.polimi.hypermedia.backend.repositories;

import it.polimi.hypermedia.backend.entities.Event;
import org.springframework.data.jpa.repository.JpaRepository;

import java.sql.Date;
import java.util.List;

public interface EventRepository extends JpaRepository<Event, Long> {
    List<Event> findAllByName(String name);

    List<Event> findDistinctByOrderByEventDays_DateAsc();

    List<Event> findAllByEventDays_DateGreaterThanEqualOrderByEventDays_DateAsc(Date eventDays_date);

    List<Event> findAllByLocation_IdAndEventDays_DateGreaterThanEqualOrderByEventDays_DateAsc(Long locationId, Date eventDaysDate);
}
