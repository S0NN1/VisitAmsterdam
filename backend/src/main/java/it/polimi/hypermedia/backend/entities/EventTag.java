package it.polimi.hypermedia.backend.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import java.util.List;

@Entity
public class EventTag {
    @Id
    private String name;
    @ManyToMany
    @JsonBackReference("event-category")
    private List<Event> event;

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
