package uow.csse.tv.gympe.model;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * Running Entity
 *
 * @author 	Tab Tu
 * @date	2018-10-22
 * @since	1.0
 *
 */

@Entity(name = "Running")
@Table(name = "tv_running")
public class Running extends Entitys implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
    @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinColumn(name="r_user")
    @JsonBackReference
    private User user;
    @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinColumn(name="r_runningman")
//    @JsonBackReference
    private RunningMan runner;

    private Date date;

    private String location;

    public Running() {

    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public RunningMan getRunner() {
        return runner;
    }

    public void setRunner(RunningMan runner) {
        this.runner = runner;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }
}
