package uow.csse.tv.gympe.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import uow.csse.tv.gympe.model.VNews;
import uow.csse.tv.gympe.model.Venue;

import java.util.Date;
import java.util.List;

/**
 * Vnews Repository Interface
 *
 * @author 	Tab Tu
 * @date	2018-02-05
 * @update  Tab Tu on Feb.10 2018
 * @since	1.0
 *
 */

@Repository
public interface VnewsRepo extends JpaRepository<VNews, Long> {

    Page<VNews> findVNewsByVenue_Id(int id, Pageable pageable);
}