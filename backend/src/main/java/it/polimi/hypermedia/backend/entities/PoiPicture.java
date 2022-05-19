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
    @JsonBackReference("picture-poi")
    private PointOfInterest pointOfInterest;

    public PoiPicture(){}

    public PoiPicture(String path, String description) {
        this.path = path;
        this.description = description;
    }
}
