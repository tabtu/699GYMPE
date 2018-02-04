package uow.csse.tv.gympe.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import uow.csse.tv.gympe.model.User;
import uow.csse.tv.gympe.repository.UserRepo;
import uow.csse.tv.gympe.service.LoginService;
import uow.csse.tv.gympe.service.SystService;
import uow.csse.tv.gympe.utils.MD5Util;

/**
 * Login Service Implement
 *
 * @author 	Tab Tu
 * @date	2018-01-30
 * @update  Tab Tu on Feb.03 2018
 * @since	1.0
 *
 */

@Service
public class LoginServiceImpl implements LoginService {
    @Autowired
    private UserRepo userRepo;

    @Override
    public User findUserByUsername(String username) {
        return userRepo.findByUsername(username);
    }

    @Override
    public User findUserByUsernameOrEmail(String email, String username) { return userRepo.findByUsernameOrEmail(email, username); }

    @Override
    public User findUserByEmail(String email) { return userRepo.findByEmail(email); }

    public int login(User user) {
        User tmp = userRepo.findByUsername(user.getUsername());
        String md5pwd = MD5Util.encrypt(user.getUsername() + user.getPassword());
        if (tmp != null) {
            if (tmp.getPassword().equals(md5pwd)) {
                return 1;
            } else {
                return -1;
            }
        } else {
            return -2;
        }
    }

    public boolean register(User user) {
        user.setPassword(MD5Util.encrypt(user.getUsername() + user.getPassword()));
        User tmp = userRepo.save(user);
        if (tmp != null) {
            return true;
        } else {
            return false;
        }
    }
}
