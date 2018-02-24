//package uow.csse.tv.gympe.model;
//
//import javax.persistence.*;
//import java.io.Serializable;
//import java.util.Date;
//
//@Entity(name = "ActUorder")
//@Table(name = "tv_activity_user")
//public class ActUorder extends Entitys implements Serializable {
//
//    @EmbeddedId
//    private ActU id;
//    @Column(nullable = false)
//    private Date date;
//    @Column(nullable = false)
//    private int count;
//
//    public ActUorder () {
//
//    }
//
//    public ActUorder(ActU i, Date d, int c) {
//        this.id = i;
//        this.date = d;
//        this.count = c;
//    }
//
//    public ActU getId() {
//        return id;
//    }
//
//    public void setId(ActU id) {
//        this.id = id;
//    }
//
//    public int getCount() {
//        return count;
//    }
//
//    public void setCount(int count) {
//        this.count = count;
//    }
//
//    public Date getDate() {
//        return date;
//    }
//
//    public void setDate(Date date) {
//        this.date = date;
//    }
//}
