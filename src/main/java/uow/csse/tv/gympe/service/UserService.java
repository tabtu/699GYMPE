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

    List<Club> findClubAll();

    List<Club> findSchoolAll();

    List<Venue> findVenueAll();

    List<User> findUserAll();

//    List<User> findUserList(int type);

    User findUserByUserId(String user_id);

    User findUserByUserName(String username);

//    User findUser(int type, int ex_id);
}