package it.polimi.hypermedia.backend.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class EventTag {
    @Id
    private String name;
    @ManyToOne
    @JsonBackReference("event-category")
    private Event event;

    public EventTag(String name) {
        this.name = name;
    }

    protected EventTag() {}

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
