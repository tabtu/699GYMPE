package uow.csse.tv.gympe.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import uow.csse.tv.gympe.model.User;
import uow.csse.tv.gympe.repository.UserRepo;
import uow.csse.tv.gympe.service.LoginService;

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

//    @Autowired
//    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public User findUserByUsername(String username) {
        return userRepo.findByUsername(username);
    }

    @Override
    public User findUserByUsernameOrEmail(String email, String username) { return userRepo.findByUsernameOrEmail(email, username); }

    @Override
    public User findUserByEmail(String email) { return userRepo.findByEmail(email); }
}
