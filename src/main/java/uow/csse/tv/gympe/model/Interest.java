package uow.csse.tv.gympe.model;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import org.hibernate.annotations.NaturalId;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

/**
 * Interest Entity
 *
 * @author 	Tab Tu
 * @date	2017-11-01
 * @update  Tab Tu on Nov.1 2017
 * @since	1.0
 *
 */

@Entity(name = "Interest")
@Table(name = "tv_interest")
public class Interest extends Entitys implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long interest_id;
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="user_interest")
    @JsonManagedReference
    private User user_id;
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="sport_interest")
    @JsonManagedReference
    private Sport sport_id;
    @Column(nullable = true)
    private int rate;

    public Interest() {

    }

    public Interest(User u, Sport s, int r) {
        user_id = u;
        sport_id = s;
        rate = r;
    }
}
