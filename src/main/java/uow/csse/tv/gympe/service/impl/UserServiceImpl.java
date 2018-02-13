package uow.csse.tv.gympe.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import uow.csse.tv.gympe.model.*;
import uow.csse.tv.gympe.repository.*;
import uow.csse.tv.gympe.service.UserService;

import javax.xml.bind.annotation.XmlEnumValue;
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

    @Autowired
    private VnewsRepo vnewsRepo;

    @Autowired
    private CityRepo cityRepo;

    @Autowired
    private AthleteRepo athleteRepo;

    @Autowired
    private CoachRepo coachRepo;

    @Autowired
    private RefereeRepo refereeRepo;

    @Override
    public void saveVNews(VNews vnews) {
        vnewsRepo.save(vnews);
    }

    @Override
    public void saveAthlete(Athlete athlete) {
        athleteRepo.save(athlete);
    }

    @Override
    public void saveCoach(Coach coach) {
        coachRepo.save(coach);
    }

    @Override
    public void saveReferee(Referee referee) {
        refereeRepo.save(referee);
    }
}
