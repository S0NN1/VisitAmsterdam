package it.polimi.hypermedia.backend.entities;

import com.sun.istack.NotNull;
import it.polimi.hypermedia.backend.model.enums.Days;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.sql.Time;

@Entity
public class Day {
    @Id
    @GeneratedValue
    private Long id;
    @NotNull
    private Days day;
    @NotNull
    private Time openingHours;
    @NotNull
    private Time closingHours;

    protected Day() {}

    public Day(Days day, Time openingHours, Time closingHours) {
        this.day = day;
        this.openingHours = openingHours;
        this.closingHours = closingHours;
    }

    public Long getId() {
        return id;
    }

    public Days getDay() {
        return day;
    }

    public void setDay(Days day) {
        this.day = day;
    }

    public Time getOpeningHours() {
        return openingHours;
    }

    public void setOpeningHours(Time openingHours) {
        this.openingHours = openingHours;
    }

    public Time getClosingHours() {
        return closingHours;
    }

    public void setClosingHours(Time closingHours) {
        this.closingHours = closingHours;
    }
}
