package uow.csse.tv.gympe.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import uow.csse.tv.gympe.config.Const;
import uow.csse.tv.gympe.model.*;
import uow.csse.tv.gympe.repository.*;
import uow.csse.tv.gympe.service.AdminService;
import uow.csse.tv.gympe.service.LoginService;
import uow.csse.tv.gympe.service.SystService;
import uow.csse.tv.gympe.utils.MD5Util;

import java.util.Date;

/**
 * Admin Service Implement
 *
 * @author 	Tab Tu
 * @date	2018-01-30
 * @update  Tab Tu on Feb.03 2018
 * @since	1.0
 *
 */

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    private CategoryRepo categoryRepo;

    @Autowired
    private CityRepo cityRepo;

    @Autowired
    private DistrictRepo districtRepo;

    @Autowired
    private SportRepo sportRepo;

    @Autowired
    private UserRepo userRepo;

    @Autowired
    private ClubRepo clubRepo;

    @Autowired
    private VenueRepo venueRepo;


    @Override
    public void saveCategory(Category category) {
        categoryRepo.save(category);
    }

    @Override
    public void saveCity(City city) {
        cityRepo.save(city);
    }

    @Override
    public void saveDistrict(District district) {
        districtRepo.save(district);
    }

    @Override
    public void saveSport(Sport sport) {
        sportRepo.save(sport);
    }

    @Override
    public void saveUser(User user) {
        userRepo.save(user);
    }

    @Override
    public void saveClub(Club club) {
        club.setUpdateDate(new Date());
        clubRepo.save(club);
    }

    @Override
    public void saveVenue(Venue venue) {
        venueRepo.save(venue);
    }

}
