package it.polimi.hypermedia.backend.entities;

import com.sun.istack.NotNull;
import it.polimi.hypermedia.backend.model.enums.ServiceType;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Service {
    @Id
    @GeneratedValue
    private Long id;
    @NotNull
    private String name;
    @NotNull
    private ServiceType serviceType;
    @NotNull
    private String address;
    @NotNull
    private double latitude;
    @NotNull
    private double longitude;

    public Service(String name, ServiceType serviceType, String address, double latitude, double longitude) {
        this.name = name;
        this.serviceType = serviceType;
        this.address = address;
        this.latitude = latitude;
        this.longitude = longitude;
    }

    protected Service() {}

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public ServiceType getServiceType() {
        return serviceType;
    }

    public void setServiceType(ServiceType serviceType) {
        this.serviceType = serviceType;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    public double getLongitude() {
        return longitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }
}
