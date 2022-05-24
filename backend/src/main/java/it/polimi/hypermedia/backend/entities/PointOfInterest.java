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
    private String description;
    @OneToOne
    private VisitInfo visitInfo;
    @OneToMany(cascade = CascadeType.ALL)
    @JsonManagedReference
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
}
