package uow.csse.tv.gympe.model;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Athlete Entity
 *
 * @author 	Tab Tu
 * @date	2018-01-30
 * @update  Tab Tu on Feb.09 2018
 * @since	1.0
 *
 */

@Entity(name = "Athlete")
@Table(name = "tv_athlete")
public class Athlete extends Entitys implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int athlete_id;
    private short height;
    private short weight;
    private short focusLevel;
    private short teamSpirit;
    private short psychological;
    private short technical;
    private short communication;
    private short physical;
    //private String qualification;
    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "tv_athlete_club", joinColumns = @JoinColumn(name = "athlete_id"), inverseJoinColumns = @JoinColumn(name = "club_id"))
    private List<Club> club = new ArrayList<>();

    public Athlete() {

    }

    public int getAthlete_id() {
        return athlete_id;
    }

    public void setAthlete_id(int athlete_id) {
        this.athlete_id = athlete_id;
    }

    public short getHeight() {
        return height;
    }

    public void setHeight(short height) {
        this.height = height;
    }

    public short getWeight() {
        return weight;
    }

    public void setWeight(short weight) {
        this.weight = weight;
    }

    public List<Club> getClub() {
        return club;
    }

    public void setClub(List<Club> club) {
        this.club = club;
    }

    public short getCommunication() {
        return communication;
    }

    public void setCommunication(short communication) {
        this.communication = communication;
    }

    public short getFocusLevel() {
        return focusLevel;
    }

    public void setFocusLevel(short focusLevel) {
        this.focusLevel = focusLevel;
    }

    public short getPhysical() {
        return physical;
    }

    public void setPhysical(short physical) {
        this.physical = physical;
    }

    public short getPsychological() {
        return psychological;
    }

    public void setPsychological(short psychological) {
        this.psychological = psychological;
    }

    public short getTeamSpirit() {
        return teamSpirit;
    }

    public void setTeamSpirit(short teamSpirit) {
        this.teamSpirit = teamSpirit;
    }

    public short getTechnical() {
        return technical;
    }

    public void setTechnical(short technical) {
        this.technical = technical;
    }
}
