package it.polimi.hypermedia.backend.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.sun.istack.NotNull;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Picture {
    @Id
    @GeneratedValue
    private Long id;
    @NotNull
    private String path;
    private String description;
    @ManyToOne
    @JsonBackReference
    private PointOfInterest pointOfInterest;
    public Picture(){}

    public Picture(String path, String description) {
        this.path = path;
        this.description = description;
    }
}
