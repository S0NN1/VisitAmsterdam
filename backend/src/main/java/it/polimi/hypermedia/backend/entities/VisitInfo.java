package it.polimi.hypermedia.backend.entities;

import com.sun.istack.NotNull;

import javax.persistence.*;
import java.net.URL;
import java.util.List;

@Entity
public class VisitInfo {
    @Id
    @GeneratedValue
    private Long id;
    @NotNull
    private double price;
    @NotNull
    private URL url;
    @OneToMany
    private List<Day> openingHours;

    public Long getId() {
        return id;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public URL getUrl() {
        return url;
    }

    public void setUrl(URL url) {
        this.url = url;
    }

    public List<Day> getOpeningHours() {
        return openingHours;
    }

    public void setOpeningHours(List<Day> openingHours) {
        this.openingHours = openingHours;
    }
}
