package uow.csse.tv.gympe.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Club Entity
 *
 * @author 	Tab Tu
 * @date	2018-01-30
 * @update  Tab Tu on Feb.03 2018
 * @since	1.0
 *
 */

@Entity(name = "Club")
@Table(name = "tv_club")
public class Club extends Entitys implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int club_id;
    @Column(nullable = false)
    private String name;
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="club_district")
    @JsonManagedReference
    private District district;
    private String picture;
    private String address;
    private String tel;
    private int sort;
    private String introduction;
    @Column(nullable = false)
    private Date createDate;
    @Column(nullable = false)
    private Date updateDate;
    @Column(nullable = false)
    private boolean isSchool;
    @ManyToMany(mappedBy = "clubs", cascade = CascadeType.ALL)
    private List<Coach> coaches = new ArrayList<>();
    @ManyToMany(mappedBy = "clubs", cascade = CascadeType.ALL)
    private List<Referee> referees = new ArrayList<>();
    @ManyToMany(mappedBy = "clubs", cascade = CascadeType.ALL)
    private List<Athlete> athletes = new ArrayList<>();

    public Club() { }

    public int getClub_id() {
        return club_id;
    }

    public void setClub_id(int club_id) {
        this.club_id = club_id;
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

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public int getSort() {
        return sort;
    }

    public void setSort(int sort) {
        this.sort = sort;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public boolean getIsSchool() {
        return isSchool;
    }

    public void setIsSchool(boolean isSchool) {
        this.isSchool = isSchool;
    }

    public List<Athlete> getAthletes() {
        return athletes;
    }

    @JsonBackReference
    public void setAthletes(List<Athlete> athletes) {
        this.athletes = athletes;
    }

    public List<Coach> getCoaches() {
        return coaches;
    }

    @JsonBackReference
    public void setCoaches(List<Coach> coaches) {
        this.coaches = coaches;
    }

    public List<Referee> getReferees() {
        return referees;
    }

    @JsonBackReference
    public void setReferees(List<Referee> referees) {
        this.referees = referees;
    }
}
