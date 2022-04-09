package it.polimi.hypermedia.backend.entities;

import com.sun.istack.NotNull;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Picture {
    @Id
    @GeneratedValue
    private Long id;
    @NotNull
    private String path;
    private String description;
}
