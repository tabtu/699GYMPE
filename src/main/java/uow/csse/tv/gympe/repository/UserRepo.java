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

    User findUserByAthlete_Id(int id);

    User findUserByCoach_Id(int id);

    User findUserByReferee_Id(int id);

    Page<User> findUsersByEnabled(boolean enabled, Pageable page);

//    List<User> findUsersByEnabled(boolean enabled);

    Page<User> findUsersByAthleteNotNull(Pageable page);

    Page<User> findUsersByCoachNotNull(Pageable page);

    Page<User> findUsersByRefereeNotNull(Pageable page);

    Page<User> findUsersByAthleteNotNullAndNameContains(String name, Pageable page);

    Page<User> findUsersByCoachNotNullAndNameContains(String name, Pageable page);

    Page<User> findUsersByRefereeNotNullAndNameContains(String name, Pageable page);

    Page<User> findUsersByNameContains(String name, Pageable page);

//    @Transactional
//    @Modifying
//    @Query("UPDATE bptzz_user SET username=?2, password=?3, email=?4 WHERE user_id=?1")
//    int updateUser(long usid, String username, String password, String email);
}
