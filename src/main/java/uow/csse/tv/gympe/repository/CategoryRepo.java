package uow.csse.tv.gympe.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import uow.csse.tv.gympe.model.Category;

/**
 * Category Repository Interface
 *
 * @author 	Tab Tu
 * @date	2018-02-05
 * @update  Tab Tu on Feb.09 2018
 * @since	1.0
 *
 */

@Repository
public interface CategoryRepo extends JpaRepository<Category, Integer> {

}
