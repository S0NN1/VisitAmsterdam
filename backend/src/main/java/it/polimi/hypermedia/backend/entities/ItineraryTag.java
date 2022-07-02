package it.polimi.hypermedia.backend.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import java.util.List;

@Entity
public class ItineraryTag {
    @Id
    private String name;
    @ManyToMany
    @JsonBackReference
    private List<Itinerary> itineraries;
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
