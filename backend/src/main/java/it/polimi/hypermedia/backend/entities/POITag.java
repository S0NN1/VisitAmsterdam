package it.polimi.hypermedia.backend.entities;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class POITag {
    @Id
    private String name;
}
