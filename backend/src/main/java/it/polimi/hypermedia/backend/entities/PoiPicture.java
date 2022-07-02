package it.polimi.hypermedia.backend.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.sun.istack.NotNull;

import javax.persistence.*;

@Entity
public class PoiPicture {
    @Id
    @GeneratedValue
    private Long id;
    @NotNull
    private String path;
    private String description;
    @ManyToOne
    @JoinColumn(name = "point_of_interest_id", nullable = false)
    @JsonBackReference("poi-picture")
    private PointOfInterest pointOfInterest;

    public PoiPicture(){}

    public PoiPicture(String path, String description) {
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

    public PointOfInterest getPointOfInterest() {
        return pointOfInterest;
    }

    public void setPointOfInterest(PointOfInterest pointOfInterest) {
        this.pointOfInterest = pointOfInterest;
    }
}
