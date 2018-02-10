package uow.csse.tv.gympe.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * Referee Entity
 *
 * @author 	Tab Tu
 * @date	2018-01-30
 * @update  Tab Tu on Jan.30 2018
 * @since	1.0
 *
 */

@Entity(name = "Referee")
@Table(name = "tv_referee")
@JsonIgnoreProperties({"handler", "hibernateLazyInitializer"})
public class Referee extends Entitys implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int referee_id;
    private boolean gender;
    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "tv_referee_qualification", joinColumns = @JoinColumn(name = "referee_id"), inverseJoinColumns = @JoinColumn(name = "qualification_id"))
    @JsonManagedReference
    private List<Qualification> qualifications;
    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "tv_referee_club", joinColumns = @JoinColumn(name = "referee_id"), inverseJoinColumns = @JoinColumn(name = "club_id"))
    @JsonManagedReference
    private List<Club> clubs = new ArrayList<>();

    public Referee() {

    }

    public int getReferee_id() {
        return referee_id;
    }

    public void setReferee_id(int referee_id) {
        this.referee_id = referee_id;
    }

    public boolean getGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public List<Club> getClubs() {
        return clubs;
    }

    @JsonBackReference
    public void setClubs(List<Club> clubs) {
        this.clubs = clubs;
    }

    public List<Qualification> getQualifications() {
        return qualifications;
    }

    @JsonBackReference
    public void setQualifications(List<Qualification> qualifications) {
        this.qualifications = qualifications;
    }
}