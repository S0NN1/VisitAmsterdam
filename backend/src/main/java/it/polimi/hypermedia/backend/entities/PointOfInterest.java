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
    @OneToMany(cascade = CascadeType.ALL)
    @JsonManagedReference
    private List<PointOfInterestTag> tags;
    @OneToMany(cascade = CascadeType.ALL)
    @JsonManagedReference
    private List<Picture> pictures;
    @OneToMany(cascade = CascadeType.ALL)
    @JsonManagedReference
    private List<Event> events;

    protected PointOfInterest() {}

    public PointOfInterest(String name, String address, double latitude, double longitude, String description, List<PointOfInterestTag> tags, List<Picture> pictures, List<Event> events) {
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

    public double getLatitude() {
        return latitude;
    }

    public double getLongitude() {
        return longitude;
    }
}
