package it.polimi.hypermedia.backend.entities;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import java.util.List;

@Entity
public class ServiceTag {
    @Id
    private String name;
    @OneToMany
    @JoinColumn(name = "service_id")
    @JsonIgnoreProperties("serviceTag")
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

    public List<Service> getServices() {
        return services;
    }

    public void setServices(List<Service> services) {
        this.services = services;
    }
}
