package uow.csse.tv.gympe.model;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import org.hibernate.annotations.NaturalId;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Venue Entity
 *
 * @author 	Tab Tu
 * @date	2018-01-30
 * @update  Tab Tu on Jan.30 2018
 * @since	1.0
 *
 */

@Entity(name = "Venues")
@Table(name = "tv_venues")
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

    public Venue() { }

    public int getVenues_id() {
        return venue_id;
    }

    public void setVenues_id(int venues_id) {
        this.venue_id = venues_id;
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

    public void setDistrict(District district) {
        this.district = district;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}