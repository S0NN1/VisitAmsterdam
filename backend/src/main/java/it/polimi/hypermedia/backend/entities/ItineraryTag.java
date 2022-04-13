package it.polimi.hypermedia.backend.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class ItineraryTag {
    @Id
    private String name;
    @ManyToOne
    @JsonBackReference
    private Itinerary itinerary;
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
