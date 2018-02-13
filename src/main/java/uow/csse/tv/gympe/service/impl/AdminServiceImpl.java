package uow.csse.tv.gympe.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import uow.csse.tv.gympe.model.*;
import uow.csse.tv.gympe.repository.*;
import uow.csse.tv.gympe.service.AdminService;

import java.util.Date;

/**
 * Admin Service Implement
 *
 * @author 	Tab Tu
 * @date	2018-01-30
 * @update  Tab Tu on Feb.11 2018
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

    @Autowired
    private QualificationRepo qualificationRepo;

    @Autowired
    private NewsRepo newsRepo;

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
    public void saveClub(Club club) {
        club.setUpdatedate(new Date());
        clubRepo.save(club);
    }

    @Override
    public void saveVenue(Venue venue) {
        venueRepo.save(venue);
    }

    @Override
    public void saveQualification(Qualification qualification) {
        qualificationRepo.save(qualification);
    }

    @Override
    public void saveNews(News news) {
        newsRepo.save(news);
    }

}
