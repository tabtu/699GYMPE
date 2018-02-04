package uow.csse.tv.gympe.model;

import org.hibernate.annotations.NaturalId;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Log Entity
 *
 * @author 	Tab Tu
 * @date	2018-01-30
 * @update  Tab Tu on Feb.03 2018
 * @since	1.0
 *
 */

@Entity(name = "Category")
@Table(name = "tv_category")
public class Category extends Entitys implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private short cate_id;
    @Column(nullable = false)
    private String name;

    public Category() {

    }

    public short getCate_id() {
        return cate_id;
    }

    public void setCate_id(short cate_id) {
        this.cate_id = cate_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}