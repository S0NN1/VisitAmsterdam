package it.polimi.hypermedia.backend.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.sun.istack.NotNull;

import javax.persistence.*;
import java.util.List;

@Entity
public class Event {
    @Id
    @GeneratedValue
    private Long id;
    @NotNull
    private String name;
    @NotNull
    @Lob
    @Column(length = 2048)
    private String description;
    @NotNull
    private double price = 0.0;

    private String heroImageUrl;
    @OneToMany(mappedBy = "event", cascade = CascadeType.ALL)
    @JsonManagedReference("event-picture")
    private List<EventPicture> eventPictures;

    private String infoUrl;
    private String bookingUrl;

    @NotNull
    @ManyToMany(cascade = CascadeType.DETACH)
//    @JsonManagedReference("event-category")
    private List<EventTag> categories;

    @OneToMany(mappedBy = "event", cascade = CascadeType.ALL)
    @JsonManagedReference("event-day")
    private List<EventDay> eventDays;

    @ManyToOne
    @JoinColumn(name = "poi_id", nullable = false)
    @JsonIgnoreProperties("events")
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

    public List<EventPicture> getPictures() {
        return eventPictures;
    }

    public void addPicture(EventPicture eventPicture) {
        this.eventPictures.add(eventPicture);
    }

    public String getInfoUrl() {
        return infoUrl;
    }

    public void setInfoUrl(String infoUrl) {
        this.infoUrl = infoUrl;
    }

    public String getBookingUrl() {
        return bookingUrl;
    }

    public void setBookingUrl(String bookingUrl) {
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
