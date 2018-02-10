package uow.csse.tv.gympe.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import org.hibernate.annotations.NaturalId;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Venue Entity
 *
 * @author 	Tab Tu
 * @date	2018-01-30
 * @update  Tab Tu on Jan.30 2018
 * @since	1.0
 *
 */

@Entity(name = "Venue")
@Table(name = "tv_venue")
public class Venue extends Entitys implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int venue_id;
    @Column(nullable = false)
    private String name;
    private String tel;
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="venues_district")
    @JsonManagedReference
    private District district;
    @Column(nullable = false)
    private String address;
    private Date createDate;
    private String picture;
    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "tv_venue_sport", joinColumns = @JoinColumn(name = "venue_id"), inverseJoinColumns = @JoinColumn(name = "sport_id"))
    @JsonManagedReference
    private List<Sport> sports = new ArrayList<>();

    public Venue() { }

    public int getVenue_id() {
        return venue_id;
    }

    public void setVenue_id(int venue_id) {
        this.venue_id = venue_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public District getDistrict() {
        return district;
    }

    @JsonBackReference
    public void setDistrict(District district) {
        this.district = district;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }
}