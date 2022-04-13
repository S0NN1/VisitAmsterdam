package it.polimi.hypermedia.backend.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.sun.istack.NotNull;

import javax.persistence.*;

@Entity
public class Picture {
    @Id
    @GeneratedValue
    private Long id;
    @NotNull
    private String path;
    private String description;
    @ManyToOne
    @JsonBackReference("picture-poi")
    private PointOfInterest pointOfInterest;

    @ManyToOne
    @JoinColumn(name = "event_id", nullable = false)
    @JsonBackReference("event-picture")
    private Event event;

    public Picture(){}

    public Picture(String path, String description) {
        this.path = path;
        this.description = description;
    }
}
