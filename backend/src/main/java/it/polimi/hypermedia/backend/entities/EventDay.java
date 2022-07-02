package it.polimi.hypermedia.backend.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;
import java.sql.Date;
import java.sql.Time;

@Entity
public class EventDay {
    @Id
    @GeneratedValue
    private Long id;
    private Date date;
    private Time startTime;
    private Time endTime;
    @ManyToOne
    @JoinColumn(name = "event_id", nullable = false)
    @JsonBackReference("event-day")
    private Event event;

    protected EventDay() {
    }

    public EventDay(Date date, Time startTime, Time endTime) {
        this.date = date;
        this.startTime = startTime;
        this.endTime = endTime;
    }

    public Long getId() {
        return id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Time getStartTime() {
        return startTime;
    }

    public void setStartTime(Time startTime) {
        this.startTime = startTime;
    }

    public Time getEndTime() {
        return endTime;
    }

    public void setEndTime(Time endTime) {
        this.endTime = endTime;
    }
}
