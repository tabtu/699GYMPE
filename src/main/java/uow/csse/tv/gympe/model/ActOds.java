package uow.csse.tv.gympe.model;

import org.hibernate.annotations.GenericGenerator;

import javax.jws.soap.SOAPBinding;
import javax.persistence.*;
import java.util.Date;

/**
 * Activity User Orders Entity
 *
 * @author 	Tab Tu
 * @date	2018-02-23
 * @update  Tab Tu on Feb.23 2018
 * @since	1.0
 *
 */


@Entity(name = "ActOds")
@Table(name = "tv_activity_user")
@GenericGenerator(name = "jpa-uuid", strategy = "uuid")
public class ActOds {

    @Id
    @GeneratedValue(generator = "jpa-uuid")
    private String id;
    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinColumn(name="acts_activity")
    private Activity activity;
    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinColumn(name="acts_user")
    private User user;
    @Column(nullable = false)
    private Date date;
    @Column(nullable = false)
    private int count;
    @Column(nullable = false)
    private boolean ispaid;
    private Date pdate;

    public ActOds() {

    }

    public ActOds(Activity a, User u, Date d, int c) {
        this.activity = a;
        this.user = u;
        this.date = d;
        this.count = c;
        this.ispaid = false;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Activity getActivity() {
        return activity;
    }

    public void setActivity(Activity activity) {
        this.activity = activity;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public boolean getIspaid() {
        return ispaid;
    }

    public void setIspaid(boolean ispaid) {
        this.ispaid = ispaid;
    }

    public Date getPdate() {
        return pdate;
    }

    public void setPdate(Date pdate) {
        this.pdate = pdate;
    }
}
