package uow.csse.tv.gympe.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import uow.csse.tv.gympe.model.User;
import uow.csse.tv.gympe.repository.UserRepo;
import uow.csse.tv.gympe.service.UserService;

import java.util.ArrayList;
import java.util.List;

/**
 * @author 	Tab Tu
 * @update	Nov.20 2017
 * @version	1.1
 */


@Service
public class UserServiceImpl implements UserService {
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
