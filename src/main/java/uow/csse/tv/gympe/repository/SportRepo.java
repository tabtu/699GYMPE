package uow.csse.tv.gympe.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import uow.csse.tv.gympe.model.Category;
import uow.csse.tv.gympe.model.Sport;

/**
 * Sport Repository Interface
 *
 * @author 	Tab Tu
 * @date	2018-01-30
 * @update  Tab Tu on Jan.30 2018
 * @since	1.0
 *
 */

import java.util.List;

@Repository
public interface SportRepo extends JpaRepository<Sport, Integer> {

    List<Sport> findSportsByCategory_IdOrderBySortAsc(int id);

    List<Sport> findAllByOrderBySortAsc();

}
