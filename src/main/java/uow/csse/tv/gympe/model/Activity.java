package uow.csse.tv.gympe.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.data.domain.Sort;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Activity Entity
 *
 * @author 	Tab Tu
 * @date	2018-02-23
 * @update  Tab Tu on Feb.23 2018
 * @since	1.0
 *
 */

@Entity(name = "Activity")
@Table(name = "tv_activity")
@GenericGenerator(name = "jpa-uuid", strategy = "uuid")
public class Activity extends Entitys implements Serializable {

    @Id
    @GeneratedValue(generator = "jpa-uuid")
    private String id;
    @Column(nullable = false)
    private String title;
    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "tv_activity_club", joinColumns = @JoinColumn(name = "activity_id"), inverseJoinColumns = @JoinColumn(name = "club_id"))
    private List<Club> clubs = new ArrayList<>();
    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "tv_activity_venue", joinColumns = @JoinColumn(name = "activity_id"), inverseJoinColumns = @JoinColumn(name = "venue_id"))
    private List<Venue> venues = new ArrayList<>();
    @Column(nullable = false)
    private Date startdate;
    @Column(nullable = false)
    private Date enddate;
    @Column(nullable = false)
    private double price;
    private int count;
    private String picture;
    @Column(length = 65535,columnDefinition="Text")
    private String content;
    private boolean avaliable;
    private int sort;

    public Activity() { }

    public Activity(String t, Date st, Date et, double p) {
        this.title = t;
        this.startdate = st;
        this.enddate = et;
        this.price = p;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getStartdate() {
        return startdate;
    }

    public void setStartdate(Date startdate) {
        this.startdate = startdate;
    }

    public Date getEnddate() {
        return enddate;
    }

    public void setEnddate(Date enddate) {
        this.enddate = enddate;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public List<Club> getClubs() {
        return clubs;
    }

    public void setClubs(List<Club> clubs) {
        this.clubs = clubs;
    }

    public List<Venue> getVenues() {
        return venues;
    }

    public void setVenues(List<Venue> venues) {
        this.venues = venues;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public int getSort() {
        return sort;
    }

    public void setSort(int sort) {
        this.sort = sort;
    }

    public boolean getAvaliable() {
        return avaliable;
    }

    public void setAvaliable(boolean avaliable) {
        this.avaliable = avaliable;
    }
}