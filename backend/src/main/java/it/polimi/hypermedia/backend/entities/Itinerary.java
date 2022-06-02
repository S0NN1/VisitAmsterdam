package it.polimi.hypermedia.backend.entities;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.sun.istack.NotNull;

import javax.persistence.*;
import javax.validation.constraints.Positive;
import java.util.List;

@Entity
public class Itinerary {
    @Id
    @GeneratedValue
    private Long id;
    @NotNull
    private String name;
    @NotNull
    private String description;
    @NotNull
    @ManyToMany
    private List<ItineraryTag> tags;
    @NotNull
    @Positive
    private int duration;

    @OneToMany(cascade = CascadeType.ALL)
    @JsonManagedReference("itinerary-picture")
    private List<ItineraryPicture> pictures;

    private String heroImage;

    @NotNull
    @ManyToMany
    private List<PointOfInterest> stops;

    public Itinerary(String name, String description, List<ItineraryTag> tags, int duration, String heroImage) {
        this.name = name;
        this.description = description;
        this.tags = tags;
        this.duration = duration;
        this.heroImage = heroImage;
    }

    protected Itinerary() {
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<ItineraryTag> getTags() {
        return tags;
    }

    public void setTags(List<ItineraryTag> tags) {
        this.tags = tags;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public String getHeroImage() {
        return heroImage;
    }

    public void setHeroImage(String heroImage) {
        this.heroImage = heroImage;
    }

    public List<PointOfInterest> getStops() {
        return stops;
    }

    public void setStops(List<PointOfInterest> stops) {
        this.stops = stops;
    }

    public List<ItineraryPicture> getPictures() {
        return pictures;
    }

    public void setPictures(List<ItineraryPicture> pictures) {
        this.pictures = pictures;
    }
}
