package uow.csse.tv.gympe.service;

import uow.csse.tv.gympe.model.User;

/**
 * Login Service Implement
 *
 * @author 	Tab Tu
 * @date	2018-01-30
 * @update  Tab Tu on Feb.03 2018
 * @since	1.0
 *
 */

public interface LoginService {
    User findUserByUsername(String username);

    User findUserByEmail(String email);

    User findUserByUsernameOrEmail(String email, String username);

    int login(User user);

    boolean register(User user);
}