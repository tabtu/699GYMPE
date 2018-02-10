package uow.csse.tv.gympe.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * Coach Entity
 *
 * @author 	Tab Tu
 * @date	2018-01-30
 * @update  Tab Tu on Feb.09 2018
 * @since	1.0
 *
 */

@Entity(name = "Coach")
@Table(name = "tv_coach")
@JsonIgnoreProperties({"handler", "hibernateLazyInitializer"})
public class Coach extends Entitys implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int coach_id;
    private boolean gender;
    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "tv_coach_club", joinColumns = @JoinColumn(name = "coach_id"), inverseJoinColumns = @JoinColumn(name = "club_id"))
    @JsonManagedReference
    private List<Club> clubs = new ArrayList<>();

    public Coach() {

    }

    public int getCoach_id() {
        return coach_id;
    }

    public void setCoach_id(int coach_id) {
        this.coach_id = coach_id;
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

    public void setClubs(List<Club> clubs) {
        this.clubs = clubs;
    }
}
