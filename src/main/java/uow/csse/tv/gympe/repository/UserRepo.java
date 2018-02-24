package uow.csse.tv.gympe.repository;


import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
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

    User findUserByIdAndEnabled(String id, boolean enabled);

    User findUserByUsernameAndEnabled(String username, boolean enabled);

    User findUserByEmailAndEnabled(String email, boolean enabled);

    User findUserByTelephoneAndEnabled(String telephone, boolean enabled);

    User findUserByUsernameOrEmailOrTelephone(String username, String email, String telephone);

    Page<User> findUsersByEnabled(boolean enabled, Pageable page);

//    List<User> findUsersByEnabled(boolean enabled);

    List<User> findUsersByAthleteNotNull();

    List<User> findUsersByCoachNotNull();

    List<User> findUsersByRefereeNotNull();

    User findUserByAthlete_Id(int id);

    User findUserByCoach_Id(int id);

    User findUserByReferee_Id(int id);

//    @Transactional
//    @Modifying
//    @Query("UPDATE bptzz_user SET username=?2, password=?3, email=?4 WHERE user_id=?1")
//    int updateUser(long usid, String username, String password, String email);
}
