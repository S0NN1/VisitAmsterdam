package it.polimi.hypermedia.backend.entities;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.sun.istack.NotNull;

import javax.persistence.*;
import java.util.List;

@Entity
public class Service {
    @Id
    @GeneratedValue
    private Long id;
    @NotNull
    private String name;
    @ManyToOne
    @JoinColumn(name = "service_id")
    @JsonIgnoreProperties("services")
    @NotNull
    private ServiceTag serviceTag;
    @NotNull
    private String address;
    @NotNull
    private double latitude;
    @NotNull
    private double longitude;
    @OneToOne(cascade = CascadeType.ALL)
    private VisitInfo visitInfo;
    @OneToMany(cascade = CascadeType.ALL)
    @JsonManagedReference("service-picture")
    private List<ServicePicture> pictures;

    private String heroImage;

    public Service(String name, ServiceTag serviceTag, String address, double latitude, double longitude) {
        this.name = name;
        this.serviceTag = serviceTag;
        this.address = address;
        this.latitude = latitude;
        this.longitude = longitude;
    }

    protected Service() {
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public List<ServicePicture> getPictures() {
        return pictures;
    }

    public void setPictures(List<ServicePicture> pictures) {
        this.pictures = pictures;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public VisitInfo getVisitInfo() {
        return visitInfo;
    }

    public void setVisitInfo(VisitInfo visitInfo) {
        this.visitInfo = visitInfo;
    }

    public ServiceTag getServiceTag() {
        return serviceTag;
    }

    public void setServiceTag(ServiceTag serviceTag) {
        this.serviceTag = serviceTag;
    }

    public String getHeroImage() {
        return heroImage;
    }

    public void setHeroImage(String heroImage) {
        this.heroImage = heroImage;
    }
}
