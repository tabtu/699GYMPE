package uow.csse.tv.gympe.model;

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
public class Referee extends Entitys implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int referee_id;
    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "tv_referee_qualification", joinColumns = @JoinColumn(name = "referee_id"), inverseJoinColumns = @JoinColumn(name = "club_id"))
    private List<Qualification> qualification;
    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "tv_referee_club", joinColumns = @JoinColumn(name = "referee_id"), inverseJoinColumns = @JoinColumn(name = "club_id"))
    private List<Club> club = new ArrayList<>();

    public Referee() {

    }

    public int getReferee_id() {
        return referee_id;
    }

    public void setReferee_id(int referee_id) {
        this.referee_id = referee_id;
    }

    public List<Club> getClub() {
        return club;
    }

    public void setClub(List<Club> club) {
        this.club = club;
    }

    public List<Qualification> getQualification() {
        return qualification;
    }

    public void setQualification(List<Qualification> qualification) {
        this.qualification = qualification;
    }
}