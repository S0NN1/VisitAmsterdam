package it.polimi.hypermedia.backend.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class PointOfInterestTag {
    @Id
    private String name;
    @ManyToOne
    @JsonBackReference
    private PointOfInterest pointOfInterest;
    public PointOfInterestTag(){}

    public PointOfInterestTag(String name) {
        this.name = name;
    }
}
