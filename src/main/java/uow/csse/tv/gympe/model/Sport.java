package uow.csse.tv.gympe.model;

import org.hibernate.annotations.NaturalId;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

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
    private Long sport_id;
    @NaturalId
    private String name;
    @Column(nullable = false)
    private String tablename;

    public Sport() {

    }

    public Sport(String name) { this.name = name; }

    public Long getSport_id() { return sport_id; }
    public void setSport_id(Long id) { this.sport_id = id; }
    public String getName() { return name; }
    public void setName(String name) { this.name = name; }
    public String getTablename() { return tablename; }
    public void setTablename(String tablename) { this.tablename = tablename; }
}
