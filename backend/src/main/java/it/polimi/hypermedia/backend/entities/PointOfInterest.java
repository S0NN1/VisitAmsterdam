package it.polimi.hypermedia.backend.entities;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.sun.istack.NotNull;

import javax.persistence.*;
import java.util.List;

@Entity
public class PointOfInterest {
    @Id
    @GeneratedValue
    private Long id;
    @NotNull
    private String name;
    @NotNull
    private String address;
    @NotNull
    private double latitude;
    @NotNull
    private double longitude;
    @NotNull
    private String description;
    @OneToOne
    private VisitInfo visitInfo;
    @OneToMany
    @JsonManagedReference
    private List<POITag> tags;
    @OneToMany
    @JsonManagedReference
    private List<Picture> pictures;
    @OneToMany
    @JsonManagedReference
    private List<Event> events;

    protected PointOfInterest() {}

    public PointOfInterest(String name, String address, double latitude, double longitude, String description, List<POITag> tags, List<Picture> pictures, List<Event> events) {
        this.name = name;
        this.address = address;
        this.latitude = latitude;
        this.longitude = longitude;
        this.description = description;
        this.tags = tags;
        this.pictures = pictures;
        this.events = events;
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    public double getLongitude() {
        return longitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<POITag> getTags() {
        return tags;
    }

    public void setTags(List<POITag> tags) {
        this.tags = tags;
    }

    public List<Picture> getPictures() {
        return pictures;
    }

    public void setPictures(List<Picture> pictures) {
        this.pictures = pictures;
    }

    public List<Event> getEvents() {
        return events;
    }

    public void setEvents(List<Event> events) {
        this.events = events;
    }

    public void addEvents(Event event) {
        this.events.add(event);
    }

    public void addPicture(Picture picture) {
        this.pictures.add(picture);
    }

    public void addTag(POITag tag) {
        this.tags.add(tag);
    }
}
