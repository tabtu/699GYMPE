package uow.csse.tv.gympe.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import uow.csse.tv.gympe.config.Const;
import uow.csse.tv.gympe.model.Log;
import uow.csse.tv.gympe.model.User;
import uow.csse.tv.gympe.repository.LogRepo;
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

    @Autowired
    private LogRepo logRepo;

    @Override
    public User getUser(String userid) {
        return userRepo.findOne(userid);
    }

    @Override
    public User getUser(String username, String email, String telephone) {
        if (username == null) {
            username = "";
        }
        if (email == null) {
            email = "";
        }
        if (telephone == null) {
            telephone = "";
        }
        User tmp = userRepo.findUserByUsernameOrEmailOrTelephone(username, email, telephone);
        if (tmp != null) {
            tmp.setPassword(null);
        }
        return tmp;
    }

    @Override
    public User getUser(int id, int type) {
        if (type == 0) {
            return userRepo.findUserByAthlete_Id(id);
        } else if (type == 1) {
            return userRepo.findUserByCoach_Id(id);
        } else if (type == 2){
            return userRepo.findUserByReferee_Id(id);
        } else {
            return null;
        }
    }

    @Override
    public User login(User user, int type) {
        User tmp;
        if (type == 0) {
            tmp = userRepo.findUserByIdAndEnabled(user.getId(), true);
        } else if (type == 1) {
            tmp = userRepo.findUserByUsernameAndEnabled(user.getUsername(), true);
        } else if (type == 2) {
            tmp = userRepo.findUserByEmailAndEnabled(user.getEmail(), true);
        } else if (type == 3) {
            tmp = null;
        } else if (type == 4) {
            tmp = userRepo.findUserByTelephoneAndEnabled(user.getTelephone(), true);
        } else {
            return null;
        }

        Log log = new Log(tmp, new Date(), "attmpt to login");
        logRepo.save(log);

        String md5pwd = MD5Util.encrypt(user.getPassword() + Const.PASSWORD_KEY);
        if (tmp != null) {
            if (tmp.getPassword().equals(md5pwd)) {
                tmp.setPassword(tmp.getId());
                return tmp;
            } else {
                tmp.setPassword("");
                return tmp;
            }
        } else {
            return null;
        }
    }

    @Override
    public User register(User user) {
        try {
            user.setPassword(MD5Util.encrypt(user.getPassword() + Const.PASSWORD_KEY));
            user.setCreatetime(new Date());
            user.setEnabled(true);
            user.setUpdatetime(new Date());
            User tmp = userRepo.save(user);
            if (tmp != null) {
                tmp.setPassword(tmp.getId());
                Log log = new Log(tmp, new Date(), "regist to server");
                logRepo.save(log);
                return tmp;
            } else {
                return null;
            }
        } catch(Exception e) {
            return null;
        }
    }
}
