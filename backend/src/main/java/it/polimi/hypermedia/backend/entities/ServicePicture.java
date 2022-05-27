package it.polimi.hypermedia.backend.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.sun.istack.NotNull;

import javax.persistence.*;

@Entity
public class ServicePicture {
    @Id
    @GeneratedValue
    private Long id;
    private String path;
    private String description;

    @ManyToOne
    @JoinColumn(name = "service_id", nullable = false)
    @JsonBackReference("service-picture")
    private Service service;

    public ServicePicture(){}

    public ServicePicture(String path, String description) {
        this.path = path;
        this.description = description;
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

    public Service getservice() {
        return service;
    }

    public void setservice(Service service) {
        this.service = service;
    }
}
