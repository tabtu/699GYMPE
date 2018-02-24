package uow.csse.tv.gympe.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import uow.csse.tv.gympe.model.District;

import java.util.List;

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
public interface DistrictRepo extends JpaRepository<District, Integer> {

    List<District> findDistinctByCity_IdOrderBySortAsc(int id);

}