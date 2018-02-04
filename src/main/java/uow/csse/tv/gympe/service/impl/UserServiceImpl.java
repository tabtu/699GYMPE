package uow.csse.tv.gympe.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import uow.csse.tv.gympe.model.Club;
import uow.csse.tv.gympe.model.School;
import uow.csse.tv.gympe.model.Sport;
import uow.csse.tv.gympe.model.Venue;
import uow.csse.tv.gympe.repository.ClubRepo;
import uow.csse.tv.gympe.repository.SchoolRepo;
import uow.csse.tv.gympe.repository.SportRepo;
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
    private SchoolRepo schoolRepo;

    @Autowired
    private ClubRepo clubRepo;

    @Autowired
    private VenueRepo venueRepo;

    @Override
    public List<Sport> findSportAll() {
        return sportRepo.findAll();
    }

    @Override
    public List<School> findSchoolALL() {
        return schoolRepo.findAll();
    }

    @Override
    public List<Club> findClubAll() {
        return clubRepo.findAll();
    }

    @Override
    public List<Venue> findVenueAll() {
        return venueRepo.findAll();
    }
}
