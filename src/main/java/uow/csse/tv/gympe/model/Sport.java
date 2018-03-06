package uow.csse.tv.gympe.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import org.hibernate.annotations.NaturalId;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * Sport list
 *
 * @author 	Tab Tu
 * @date	2018-01-30
 * @update  Tab Tu on Jan.30 2018
 * @since	1.0
 *
 */

@Entity(name = "Sport")
@Table(name = "tv_sport")
public class Sport extends Entitys implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    @NaturalId
    private String name;
    private String cname;
    @Column(nullable = false)
    private String tablename;
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="sport_category")
    @JsonManagedReference
    private Category category;
    private int sort;
//    @ManyToMany(mappedBy = "sports", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
//    @JsonBackReference
//    private List<Venue> venues = new ArrayList<>();

    public Sport() { }

    public Sport(String name) { this.name = name; }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() { return name; }

    public void setName(String name) { this.name = name; }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getTablename() { return tablename; }

    public void setTablename(String tablename) { this.tablename = tablename; }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public int getSort() {
        return sort;
    }

    public void setSort(int sort) {
        this.sort = sort;
    }

//    public List<Venue> getVenues() {
//        return venues;
//    }
//
//    public void setVenues(List<Venue> venues) {
//        this.venues = venues;
//    }
}
