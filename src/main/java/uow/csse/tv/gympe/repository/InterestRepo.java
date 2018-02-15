package uow.csse.tv.gympe.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import uow.csse.tv.gympe.model.Interest;
import uow.csse.tv.gympe.model.Sport;
import uow.csse.tv.gympe.model.User;

import java.util.List;

/**
 * Interest Repository Interface
 *
 * @author 	Tab Tu
 * @date	2018-02-01
 * @update  Tab Tu on Feb.09 2018
 * @since	1.0
 *
 */

@Repository
public interface InterestRepo extends JpaRepository<Interest, String> {

    List<Interest> findInterestsByUser(User user);

    List<Interest> findInterestsBySport(Sport sport);

    List<Interest> findInterestsByUserAndSport(User user, Sport sport);
}