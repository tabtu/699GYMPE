package uow.csse.tv.gympe.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.NaturalId;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * User Entity
 *
 * @author 	Tab Tu
 * @date	2018-1-30
 * @update  Tab Tu on Jan.30 2018
 * @since	1.0
 *
 */

@Entity(name = "User")
@Table(name = "tv_user")
@GenericGenerator(name = "jpa-uuid", strategy = "uuid")
public class User extends Entitys implements Serializable {

    @Id
    @GeneratedValue(generator = "jpa-uuid")
    private String id;
    @Column(unique = true)
    private String username;
    @Column(unique = true)
    private String telephone;
    @Column(nullable = false)
    private String password;
    @Column(unique = true)
    private String email;
    @Column(nullable = false)
    private boolean enabled;
    private String picture;
    private String introduction;
    @Column(nullable = false)
    private Date createtime;
    @Column(nullable = false)
    private Date updatetime;
    private String name;
    private Date birth;
    private boolean gender;
//    @ManyToMany(cascade = CascadeType.ALL)
//    @JoinTable(name = "tv_user_sport", joinColumns = @JoinColumn(name = "user_id"), inverseJoinColumns = @JoinColumn(name = "sport_id"))
//    private List<Sport> myfav = new ArrayList<>();
    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinColumn(name="user_athlete")
    private Athlete athlete;
    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinColumn(name="user_coach")
    private Coach coach;
    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinColumn(name="user_referee")
    private Referee referee;

    public User() { super(); }

    public User(String password, String id) {
        super();
        this.id = id;
        this.password = password;
    }

    public User(String password, String username, String email, String telephone) {
        super();
        this.email = email;
        this.password = password;
        this.username = username;
        this.telephone = telephone;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Date getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getBirth() {
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }

    public Athlete getAthlete() {
        return athlete;
    }

    public void setAthlete(Athlete athlete) {
        this.athlete = athlete;
    }

    public Coach getCoach() {
        return coach;
    }

    public void setCoach(Coach coach) {
        this.coach = coach;
    }

    public Referee getReferee() {
        return referee;
    }

    public void setReferee(Referee referee) {
        this.referee = referee;
    }

    public boolean getGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

}