package it.polimi.hypermedia.backend.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import java.util.List;

@Entity
@JsonIdentityInfo(generator = ObjectIdGenerators.UUIDGenerator.class, property = "@UUID")

public class EventTag {
    @Id
    private String name;
    @ManyToMany
    private List<Event> events;

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
