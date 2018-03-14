package uow.csse.tv.gympe.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * VNews Entity
 *
 * @author 	Tab Tu
 * @date	2018-02-23
 * @update  Tab Tu on Feb.23 2018
 * @since	1.0
 *
 */

@Entity(name = "CNews")
@Table(name = "tv_cnews")
public class CNews extends Entitys implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
    @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinColumn(name="cnews_club")
    @JsonBackReference
    private Club club;
    @Column(nullable = false)
    private String title;
    @Column(length = 65535,columnDefinition="Text")
    private String content;
    @Column(nullable = false)
    private Date updatedate;
    private String picture;

    public CNews() { }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Club getClub() {
        return club;
    }

    public void setClub(Club club) {
        this.club = club;
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

    public Date getUpdatedate() {
        return updatedate;
    }

    public void setUpdatedate(Date updatedate) {
        this.updatedate = updatedate;
    }
}