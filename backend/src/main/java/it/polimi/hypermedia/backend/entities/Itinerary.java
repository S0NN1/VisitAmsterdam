package it.polimi.hypermedia.backend.entities;

import com.sun.istack.NotNull;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import java.util.List;

@Entity
public class Itinerary {
    @Id
    @GeneratedValue
    private Long id;
    @NotNull
    private String name;
    @NotNull
    private String description;
    @NotNull
    @OneToMany
    private List<ItineraryTag> tags;
    @NotNull
    private int duration;
    private String heroImage;

    public Itinerary(String name, String description, List<ItineraryTag> tags, int duration, String heroImage) {
        this.name = name;
        this.description = description;
        this.tags = tags;
        this.duration = duration;
        this.heroImage = heroImage;
    }

    protected Itinerary() {}

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

    public List<ItineraryTag> getTags() {
        return tags;
    }

    public void setTags(List<ItineraryTag> tags) {
        this.tags = tags;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public String getHeroImage() {
        return heroImage;
    }

    public void setHeroImage(String heroImage) {
        this.heroImage = heroImage;
    }
}
