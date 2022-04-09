package it.polimi.hypermedia.backend.entities;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class ItineraryTag {
    @Id
    private String name;

    public ItineraryTag(String name) {
        this.name = name;
    }

    public ItineraryTag() {}

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
