package uow.csse.tv.gympe.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import uow.csse.tv.gympe.model.Activity;
import uow.csse.tv.gympe.model.Club;
import uow.csse.tv.gympe.model.User;
import uow.csse.tv.gympe.model.Venue;
import uow.csse.tv.gympe.repository.ActivityRepo;
import uow.csse.tv.gympe.repository.ClubRepo;
import uow.csse.tv.gympe.repository.UserRepo;
import uow.csse.tv.gympe.repository.VenueRepo;
import uow.csse.tv.gympe.service.SearchService;
import uow.csse.tv.gympe.service.SystemService;

import java.util.List;

/**
 * Search Service Implements
 *
 * @author 	Tab Tu
 * @date	2018-01-30
 * @update  Tab Tu on Feb.03 2018
 * @since	1.0
 *
 */

@Service
public class SearchServiceImpl implements SearchService {

    @Autowired
    private UserRepo userRepo;

    @Autowired
    private VenueRepo venueRepo;

    @Autowired
    private ClubRepo clubRepo;

    @Autowired
    private ActivityRepo activityRepo;

    @Override
    public List<User> searchUser(String name, int page) {
        return null;
    }

    @Override
    public List<User> searchCoach(String name, int page) {
        return null;
    }

    @Override
    public List<User> searchAthlete(String name, int page) {
        return null;
    }

    @Override
    public List<User> searchReferee(String name, int page){
        return null;
    }

    @Override
    public List<Venue> searchVenue(String name, int page){
        return null;
    }

    @Override
    public List<Club> searchClub(String name, int page) {
        return null;
    }

    @Override
    public List<Club> searchSchool(String name, int page) {
        return null;
    }

    @Override
    public List<Activity> searchActivity(String name, int page) {
        return null;
    }
}
