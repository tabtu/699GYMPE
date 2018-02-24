package uow.csse.tv.gympe.repository;


import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import uow.csse.tv.gympe.model.Activity;
import uow.csse.tv.gympe.model.Club;
import uow.csse.tv.gympe.model.Venue;

import java.util.List;

/**
 * ActivityRepo Repository Interface
 *
 * @author 	Tab Tu
 * @date	2018-01-30
 * @update  Tab Tu on Jan.30 2018
 * @since	1.0
 *
 */

@Repository
public interface ActivityRepo extends JpaRepository<Activity, String> {
    Page<Activity> findActivitiesByAvaliableOrderBySortDesc(boolean avaliable, Pageable page);

    Page<Activity> findActivitiesByClubsContainingOrderByEnddateDesc(Club club, Pageable page);

    Page<Activity> findActivitiesByVenuesContainingOrderByEnddateDesc(Venue venue, Pageable page);
}
