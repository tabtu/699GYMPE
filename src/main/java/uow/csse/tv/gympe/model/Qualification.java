package uow.csse.tv.gympe.model;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * Sport list
 *
 * @author 	Tab Tu
 * @date	2018-01-30
 * @update  Tab Tu on Feb.09 2018
 * @since	1.0
 *
 */

@Entity(name = "Qualification")
@Table(name = "tv_qualification")
public class Qualification extends Entitys implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long qualification_id;
    private String name;
    private String picture;

    public Qualification() {

    }

    public Long getQualification_id() {
        return qualification_id;
    }

    public void setQualification_id(Long qualification_id) {
        this.qualification_id = qualification_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }
}