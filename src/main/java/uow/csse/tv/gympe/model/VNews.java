package uow.csse.tv.gympe.model;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * VNews Entity
 *
 * @author 	Tab Tu
 * @date	2018-01-30
 * @update  Tab Tu on Jan.30 2018
 * @since	1.0
 *
 */

@Entity(name = "VNews")
@Table(name = "tv_vnews")
public class VNews extends Entitys implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long vnews_id;
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="vnews_venues")
    @JsonManagedReference
    private Venue venue;
    @Column(nullable = false)
    private String title;
    @Column(length = 65535,columnDefinition="Text")
    private String content;
    @Column(nullable = false)
    private String picture;
    @Column(nullable = false)
    private Date updateDate;

    public VNews() { }

    public long getVnews_id() {
        return vnews_id;
    }

    public void setVnews_id(long vnews_id) {
        this.vnews_id = vnews_id;
    }

    public Venue getVenue() {
        return venue;
    }

    public void setVenue(Venue venue) {
        this.venue = venue;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
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

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}