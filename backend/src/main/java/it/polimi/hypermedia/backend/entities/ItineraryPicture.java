package it.polimi.hypermedia.backend.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.sun.istack.NotNull;

import javax.persistence.*;

@Entity
public class ItineraryPicture {
    @Id
    @GeneratedValue
    private Long id;
    @NotNull
    private String path;
    private String description;
    @ManyToOne
    @JoinColumn(name = "itinerary_id", nullable = false)
    @JsonBackReference("itinerary-picture")
    private Itinerary itinerary;

    public ItineraryPicture(){}

    public ItineraryPicture(String path, String description) {
        this.path = path;
        this.description = description;
    }

    public Long getId() {
        return id;
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

    public Itinerary getItinerary() {
        return itinerary;
    }

    public void setItinerary(Itinerary itinerary) {
        this.itinerary = itinerary;
    }
}
