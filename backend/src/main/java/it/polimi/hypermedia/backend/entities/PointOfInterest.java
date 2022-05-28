package it.polimi.hypermedia.backend.entities;

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
    @Lob
    @Column(length = 2048)
    private String description;
    @OneToOne(cascade = CascadeType.ALL)
    private VisitInfo visitInfo;
    @NotNull
    @ManyToMany(cascade = CascadeType.DETACH)
    private List<PointOfInterestTag> tags;
    @OneToMany(cascade = CascadeType.ALL)
    @JsonManagedReference("poi-picture")
    private List<PoiPicture> poiPictures;

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

    public double getLatitude() {
        return latitude;
    }

    public double getLongitude() {
        return longitude;
    }

    public List<PoiPicture> getPoiPictures() {
        return poiPictures;
    }

    public void setPoiPictures(List<PoiPicture> poiPictures) {
        this.poiPictures = poiPictures;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
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

    public VisitInfo getVisitInfo() {
        return visitInfo;
    }

    public void setVisitInfo(VisitInfo visitInfo) {
        this.visitInfo = visitInfo;
    }

    public List<PointOfInterestTag> getTags() {
        return tags;
    }

    public void setTags(List<PointOfInterestTag> tags) {
        this.tags = tags;
    }

    public List<Event> getEvents() {
        return events;
    }

    public void setEvents(List<Event> events) {
        this.events = events;
    }
}
