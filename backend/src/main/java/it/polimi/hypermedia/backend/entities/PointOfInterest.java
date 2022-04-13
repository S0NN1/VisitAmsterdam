package it.polimi.hypermedia.backend.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
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
    @OneToMany(cascade = CascadeType.ALL)
    @JsonManagedReference
    private List<PointOfInterestTag> tags;
    @OneToMany(cascade = CascadeType.ALL)
    @JsonManagedReference("picture-poi")
    private List<Picture> pictures;

    @OneToMany(mappedBy = "location", cascade = CascadeType.ALL)
    @JsonManagedReference
    @JsonIgnore
    private List<Event> events;

    public PointOfInterest() {
    }

    public PointOfInterest(Long id) {
        super();
        this.id = id;
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

    public List<PointOfInterestTag> getTags() {
        return tags;
    }

    public void setTags(List<PointOfInterestTag> tags) {
        this.tags = tags;
    }

    public List<Picture> getPictures() {
        return pictures;
    }

    public void setPictures(List<Picture> pictures) {
        this.pictures = pictures;
    }

/*    public List<Event> getEvents() {
        return events;
    }

    public void setEvents(List<Event> events) {
        this.events = events;
    }

    public void addEvents(Event event) {
        this.events.add(event);
    }*/

    public void addPicture(Picture picture) {
        this.pictures.add(picture);
    }

    public void addTag(PointOfInterestTag tag) {
        this.tags.add(tag);
    }
}
