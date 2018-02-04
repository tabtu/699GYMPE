package uow.csse.tv.gympe.model;


import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * School Entity
 *
 * @author 	Tab Tu
 * @date	2018-01-30
 * @update  Tab Tu on Jan.30 2018
 * @since	1.0
 *
 */

@Entity(name = "School")
@Table(name = "tv_school")
public class School extends Entitys implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int school_id;
    @Column(nullable = false)
    private String name;
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="school_district")
    @JsonManagedReference
    private District district;
    @Column(nullable = false)
    private String address;
    @Column(nullable = false)
    private String tel;
    private String picture;
    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "tv_school_sport", joinColumns = @JoinColumn(name = "school_id"), inverseJoinColumns = @JoinColumn(name = "sport_id"))
    private List<Sport> myfav = new ArrayList<Sport>();
    private Date createDate;

    public School() { }

    public int getSchool_id() {
        return school_id;
    }

    public void setSchool_id(int school_id) {
        this.school_id = school_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public District getDistrict() {
        return district;
    }

    public void setDistrict(District district) {
        this.district = district;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public List<Sport> getMyfav() {
        return myfav;
    }

    public void setMyfav(List<Sport> myfav) {
        this.myfav = myfav;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }
}
