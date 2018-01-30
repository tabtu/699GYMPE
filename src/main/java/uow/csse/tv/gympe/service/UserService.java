package uow.csse.tv.gympe.service;

import uow.csse.tv.gympe.model.User;

/**
 * @author 	Tab Tu
 * @date	2018-01-30
 * @update	Jan.30 2018
 * @version	1.0
 */

public interface UserService {
    User findUserByUsername(String username);

    User findUserByEmail(String email);

    User findUserByUsernameOrEmail(String email, String username);
}