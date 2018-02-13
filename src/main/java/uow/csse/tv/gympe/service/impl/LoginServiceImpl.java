package uow.csse.tv.gympe.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import uow.csse.tv.gympe.config.Const;
import uow.csse.tv.gympe.model.User;
import uow.csse.tv.gympe.repository.UserRepo;
import uow.csse.tv.gympe.service.LoginService;
import uow.csse.tv.gympe.utils.MD5Util;

import java.util.Date;

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
        return userRepo.findUserByUsername(username);
    }

    @Override
    public User findUserByUsernameOrEmail(String email, String username) { return userRepo.findUserByUsernameOrEmail(email, username); }

    @Override
    public User findUserByEmail(String email) { return userRepo.findUserByEmail(email); }

    @Override
    public int login(User user) {
        User tmp = userRepo.findUserByUsername(user.getUsername());
        String md5pwd = MD5Util.encrypt(user.getPassword() + Const.PASSWORD_KEY);
        if (tmp != null) {
            System.out.println(tmp.getPassword());
            System.out.println(md5pwd);
            if (tmp.getPassword().equals(md5pwd)) {
                return 1;
            } else {
                return -1;
            }
        } else {
            return -2;
        }
    }

    @Override
    public boolean register(User user) {
        try {
            user.setPassword(MD5Util.encrypt(user.getPassword() + Const.PASSWORD_KEY));
            user.setCreatetime(new Date());
            user.setEnabled(true);
            user.setUpdatetime(new Date());
            User tmp = userRepo.save(user);
            if (tmp != null) {
                return true;
            } else {
                return false;
            }
        } catch(Exception e) {
            return false;
        }
    }
}
