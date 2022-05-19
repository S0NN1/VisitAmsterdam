package it.polimi.hypermedia.backend.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import com.sun.istack.NotNull;

import javax.persistence.*;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

@Entity
@JsonIdentityInfo(generator = ObjectIdGenerators.UUIDGenerator.class, property = "@UUID")
public class Event {
    @Id
    @GeneratedValue
    private Long id;
    @NotNull
    private String name;
    @NotNull
    private String description;
    @NotNull
    private double price = 0.0;

    private String heroImageUrl;
    @OneToMany
    @JsonManagedReference("event-picture")
    private List<Picture> pictures;

    private URL infoUrl;
    private URL bookingUrl;

    @NotNull
    @ManyToMany
//    @JsonManagedReference("event-category")
    private List<EventTag> categories;

    @OneToMany(mappedBy = "event", cascade = CascadeType.ALL)
    @JsonManagedReference("event-day")
    private List<EventDay> eventDays;

    @ManyToOne
    @JoinColumn(name = "poi_id", nullable = false)
    private PointOfInterest location;

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getHeroImageUrl() {
        return heroImageUrl;
    }

    public void setHeroImageUrl(String heroImageUrl) {
        this.heroImageUrl = heroImageUrl;
    }

    public List<Picture> getPictures() {
        return pictures;
    }

    public void addPicture(Picture picture) {
        this.pictures.add(picture);
    }

    public URL getInfoUrl() {
        return infoUrl;
    }

    public void setInfoUrl(URL infoUrl) {
        this.infoUrl = infoUrl;
    }

    public URL getBookingUrl() {
        return bookingUrl;
    }

    public void setBookingUrl(URL bookingUrl) {
        this.bookingUrl = bookingUrl;
    }

    public List<EventTag> getCategories() {
        return categories;
    }

    public void addCategory(EventTag category) {
        this.categories.add(category);
    }

    public List<EventDay> getEventDays() {
        return eventDays;
    }

    public void addDay(EventDay eventDay) {
        this.eventDays.add(eventDay);
    }

    public PointOfInterest getLocation() {
        return location;
    }
}
