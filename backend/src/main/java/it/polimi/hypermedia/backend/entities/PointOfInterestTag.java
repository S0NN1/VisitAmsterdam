package it.polimi.hypermedia.backend.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;
import java.util.List;

@Entity
public class PointOfInterestTag {
    @Id
    private String name;
    @ManyToMany
    private List<PointOfInterest> pointOfInterests;

    public PointOfInterestTag() {
    }

    public PointOfInterestTag(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPointOfInterests(List<PointOfInterest> pointOfInterests) {
        this.pointOfInterests = pointOfInterests;
    }
}
