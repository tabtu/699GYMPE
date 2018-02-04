package uow.csse.tv.gympe.model;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Sport list
 *
 * @author 	Tab Tu
 * @date	2018-01-30
 * @update  Tab Tu on Jan.30 2018
 * @since	1.0
 *
 */

@Entity(name = "News")
@Table(name = "tv_news")
public class News extends Entitys implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long news_id;
    @Column(nullable = false)
    private long datetime;
    @Column(length = 65535,columnDefinition="Text")
    private String text;

    public News() {

    }
}