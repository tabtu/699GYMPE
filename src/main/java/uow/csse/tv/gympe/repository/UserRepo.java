package uow.csse.tv.gympe.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import uow.csse.tv.gympe.model.User;

import java.util.List;

/**
 * @author 	Tab Tu
 * @update	Nov.23 2017
 * @version	1.0
 */

@Repository
public interface UserRepo extends JpaRepository<User, Long> {

    User findByUsername(String username);

    User findByUsernameOrEmail(String email, String username);

    User findByEmail(String email);

    List<User> findByEnabled(boolean enabled);

//    @Transactional
//    @Modifying
//    @Query("UPDATE bptzz_user SET username=?2, password=?3, email=?4 WHERE user_id=?1")
//    int updateUser(long usid, String username, String password, String email);
}
