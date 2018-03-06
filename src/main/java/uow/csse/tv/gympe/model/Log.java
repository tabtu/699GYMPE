package uow.csse.tv.gympe.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * Log Entity
 *
 * @author 	Tab Tu
 * @date	2018-01-30
 * @update  Tab Tu on Feb.10 2018
 * @since	1.0
 *
 */

@Entity(name = "Log")
@Table(name = "tv_log")
@GenericGenerator(name = "jpa-uuid", strategy = "uuid")
public class Log extends Entitys implements Serializable {

    @Id
    @GeneratedValue(generator = "jpa-uuid")
    private String id;
    @ManyToOne(cascade = CascadeType.REFRESH)
    @JoinColumn(name="lg_user")
    @JsonBackReference
    private User lguser;
    @Column(nullable = false)
    private Date lgtime;
    @Column(nullable = false)
    private String operation;

    public Log() {

    }

    public Log(User u, Date t, String op) {
        this.lguser = u;
        this.lgtime = t;
        this.operation = op;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public User getLguser() {
        return lguser;
    }

    @JsonBackReference
    public void setLguser(User lguser) {
        this.lguser = lguser;
    }

    public Date getLgtime() {
        return lgtime;
    }

    public void setLgtime(Date lgtime) {
        this.lgtime = lgtime;
    }

    public String getOperation() {
        return operation;
    }

    public void setOperation(String operation) {
        this.operation = operation;
    }
}