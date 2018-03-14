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

    User getUser(String userid);

    User getUser(String username, String email, String telephone);

    /**
     *
     * @param id
     * @param type 0 athelete, 1 coach, 2 referee
     * @return
     */
    User getUser(int id, int type);

    /**
     *
     * @param user Login information
     * @param type 0 usid, 1 usnm, 2 usem, 3 uswx, 4 ustl
     * @return
     */
    User login(User user, int type);

    User register(User user);
}