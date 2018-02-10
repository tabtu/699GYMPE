package uow.csse.tv.gympe.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import uow.csse.tv.gympe.model.Club;
import uow.csse.tv.gympe.model.Sport;
import uow.csse.tv.gympe.model.User;
import uow.csse.tv.gympe.model.Venue;
import uow.csse.tv.gympe.repository.ClubRepo;
import uow.csse.tv.gympe.repository.SportRepo;
import uow.csse.tv.gympe.repository.UserRepo;
import uow.csse.tv.gympe.repository.VenueRepo;
import uow.csse.tv.gympe.service.UserService;

import java.util.List;

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
public class UserServiceImpl implements UserService {
    @Autowired
    private SportRepo sportRepo;

    @Autowired
    private ClubRepo clubRepo;

    @Autowired
    private VenueRepo venueRepo;

    @Autowired
    private UserRepo userRepo;

    @Override
    public List<Sport> findSportAll() {
        return sportRepo.findAll();
    }

    @Override
    public List<Club> findSchoolAll() {
        return clubRepo.findClubByIsSchoolOrderBySort(true);
    }

    @Override
    public List<Club> findClubAll() {
        return clubRepo.findClubByIsSchoolOrderBySort(false);
    }

    @Override
    public List<Venue> findVenueAll() {
        return venueRepo.findAll();
    }

//    @Override
//    public List<User> findUserList(int type) {
//        if (type == 0) {
//            return userRepo.findUserByAthleteNotNull();
//        } else if (type == 1) {
//            return userRepo.findUserByCoachNotNull();
//        } else if (type == 2) {
//            return userRepo.findUserByRefereeNotNull();
//        } else {
//            return userRepo.findAll();
//        }
//    }

    @Override
    public User findUser(long user_id) {
        return userRepo.findOne(user_id);
    }

    @Override
    public User findUser(String username) {
        return userRepo.findByUsername(username);
    }

//    @Override
//    public User findUser(int type, int ex_id) {
//        if (type == 0) {
//            return userRepo.findUserByAthlete_Athlete_id(ex_id);
//        } else if (type == 1) {
//            return userRepo.findUserByCoach_Coach_id(ex_id);
//        } else if (type == 2) {
//            return userRepo.findUserByReferee_Referee_id(ex_id);
//        } else {
//            return null;
//        }
//    }


}
