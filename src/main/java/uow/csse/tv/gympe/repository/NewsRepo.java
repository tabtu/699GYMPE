package uow.csse.tv.gympe.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import uow.csse.tv.gympe.model.News;

import java.util.List;

/**
 * News Repository Interface
 *
 * @author 	Tab Tu
 * @date	2018-02-05
 * @update  Tab Tu on Feb.10 2018
 * @since	1.0
 *
 */

@Repository
public interface NewsRepo extends JpaRepository<News, Long> {

    List<News> findNewsByHomeOrderByUpdatedateDesc(boolean home);

    Page<News> findNewsByHomeOrderByUpdatedateDesc(boolean home, Pageable pageable);
}