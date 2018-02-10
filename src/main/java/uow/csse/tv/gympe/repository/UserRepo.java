package uow.csse.tv.gympe.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import uow.csse.tv.gympe.model.User;

import java.util.List;

/**
 * User Repository Interface
 *
 * @author 	Tab Tu
 * @date	2018-01-30
 * @update  Tab Tu on Jan.30 2018
 * @since	1.0
 *
 */

@Repository
public interface UserRepo extends JpaRepository<User, String> {

    User findByUsername(String username);

    User findByTelephone(String telephone);

    User findByEmail(String email);

    User findByUsernameOrEmail(String email, String username);

    User findByUsernameOrEmailOrTelephone(String username, String email, String telephone);

    List<User> findByEnabled(boolean enabled);

    List<User> findUserByAthleteNotNull();

    List<User> findUserByCoachNotNull();

    List<User> findUserByRefereeNotNull();

//    User findUserByAthlete_Athlete_id(int athlete_id);
//
//    User findUserByCoach_Coach_id(int coach_id);
//
//    User findUserByReferee_Referee_id(int referee_id);

//    @Transactional
//    @Modifying
//    @Query("UPDATE bptzz_user SET username=?2, password=?3, email=?4 WHERE user_id=?1")
//    int updateUser(long usid, String username, String password, String email);
}
