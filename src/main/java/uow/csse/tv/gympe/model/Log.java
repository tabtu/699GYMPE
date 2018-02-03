package uow.csse.tv.gympe.model;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Log Entity
 *
 * @author 	Tab Tu
 * @date	2018-01-30
 * @update  Tab Tu on Jan.30 2018
 * @since	1.0
 *
 */

@Entity(name = "Log")
@Table(name = "tv_log")
public class Log extends Entitys implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long logid;
    @ManyToOne(cascade = CascadeType.REFRESH)
    @JoinColumn(name="lg_user")
    private User lguser;
    @Column(nullable = false)
    private long lgtime;
    @Column(nullable = false)
    private String operation;

    public Log() {

    }

    public Log(User u, long t, String op) {
        this.lguser = u;
        this.lgtime = t;
        this.operation = op;
    }

    public long getLogid() {
        return logid;
    }

    public void setLogid(long logid) {
        this.logid = logid;
    }

    public User getLguser() {
        return lguser;
    }

    public void setLguser(User lguser) {
        this.lguser = lguser;
    }

    public long getLgtime() {
        return lgtime;
    }

    public void setLgtime(long lgtime) {
        this.lgtime = lgtime;
    }

    public String getOperation() {
        return operation;
    }

    public void setOperation(String operation) {
        this.operation = operation;
    }
}