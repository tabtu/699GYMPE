package uow.csse.tv.gympe.service;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import uow.csse.tv.gympe.model.*;

import java.util.List;

/**
 * Sport Service Interface
 *
 * @author 	Tab Tu
 * @date	2018-01-30
 * @update  Tab Tu on Feb.03 2018
 * @since	1.0
 *
 */

public interface UserService {
    List<Sport> findSportAll();

    List<School> findSchoolALL();

    List<Club> findClubAll();

    List<Venue> findVenueAll();
}