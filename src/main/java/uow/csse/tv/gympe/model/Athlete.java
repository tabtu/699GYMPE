package uow.csse.tv.gympe.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
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
 * @update  Tab Tu on Feb.10 2018
 * @since	1.0
 *
 */

@Entity(name = "Athlete")
@Table(name = "tv_athlete")
@JsonIgnoreProperties({"handler", "hibernateLazyInitializer"})
public class Athlete extends Entitys implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private boolean gender;
    private int height;
    private int weight;
    private int focuslevel;
    private int teamspirit;
    private int psychological;
    private int technical;
    private int communication;
    private int physical;
    //private String qualification;
    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "tv_athlete_club", joinColumns = @JoinColumn(name = "athlete_id"), inverseJoinColumns = @JoinColumn(name = "club_id"))
    @JsonBackReference
    private List<Club> clubs = new ArrayList<>();

    public Athlete() {

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public boolean getGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    public int getWeight() {
        return weight;
    }

    public void setWeight(int weight) {
        this.weight = weight;
    }

    public int getCommunication() {
        return communication;
    }

    public void setCommunication(int communication) {
        this.communication = communication;
    }

    public int getFocuslevel() {
        return focuslevel;
    }

    public void setFocuslevel(int focuslevel) {
        this.focuslevel = focuslevel;
    }

    public int getPhysical() {
        return physical;
    }

    public void setPhysical(int physical) {
        this.physical = physical;
    }

    public int getPsychological() {
        return psychological;
    }

    public void setPsychological(int psychological) {
        this.psychological = psychological;
    }

    public int getTeamspirit() {
        return teamspirit;
    }

    public void setTeamspirit(int teamspirit) {
        this.teamspirit = teamspirit;
    }

    public int getTechnical() {
        return technical;
    }

    public void setTechnical(int technical) {
        this.technical = technical;
    }

    public List<Club> getClubs() {
        return clubs;
    }

    public void setClubs(List<Club> clubs) {
        this.clubs = clubs;
    }
}
