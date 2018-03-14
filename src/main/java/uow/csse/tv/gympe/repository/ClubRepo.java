package uow.csse.tv.gympe.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import uow.csse.tv.gympe.model.Club;

import java.util.List;


/**
 * Club Repository Interface
 *
 * @author 	Tab Tu
 * @date	2018-01-30
 * @update  Tab Tu on Feb.03 2018
 * @since	1.0
 *
 */

@Repository
public interface ClubRepo extends JpaRepository<Club, Integer> {

    Page<Club> findClubsByNameContainsOrderBySortDesc(String name, Pageable page);

    Page<Club> findClubsBySchoolAndDistrict_City_IdOrderBySortDesc(boolean school, int id, Pageable page);

    Page<Club> findClubsBySchoolAndDistrict_IdOrderBySortDesc(boolean school, int id, Pageable page);

    Page<Club> findClubsBySchoolOrderBySortDesc(boolean school, Pageable pageable);

    Page<Club> findClubsBySchoolAndNameContainsOrderBySortDesc(boolean school, String name, Pageable page);
}
