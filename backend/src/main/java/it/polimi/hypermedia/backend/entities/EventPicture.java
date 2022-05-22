package it.polimi.hypermedia.backend.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.sun.istack.NotNull;

import javax.persistence.*;

@Entity
public class EventPicture {
    @Id
    @GeneratedValue
    private Long id;
    private String path;
    private String description;

    @ManyToOne
    @JoinColumn(name = "event_id", nullable = false)
    @JsonBackReference("event-picture")
    private Event event;

    public EventPicture(){}

    public EventPicture(String path, String description) {
        this.path = path;
        this.description = description;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Event getEvent() {
        return event;
    }

    public void setEvent(Event event) {
        this.event = event;
    }
}
