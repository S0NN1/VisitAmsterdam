package it.polimi.hypermedia.backend.entities;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class EventTag {
    @Id
    private String name;


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
