package it.polimi.hypermedia.backend.entities;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import java.util.List;

@Entity
public class ServiceTag {
    @Id
    private String name;
    @OneToMany()
    @JoinColumn(name = "service_id")
    private List<Service> services;

    public ServiceTag(String name) {
        this.name = name;
    }

    public ServiceTag() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
