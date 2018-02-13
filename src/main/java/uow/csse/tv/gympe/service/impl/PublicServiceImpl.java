package uow.csse.tv.gympe.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import uow.csse.tv.gympe.config.Const;
import uow.csse.tv.gympe.model.*;
import uow.csse.tv.gympe.repository.*;
import uow.csse.tv.gympe.service.PublicService;

import java.util.Date;
import java.util.List;

/**
 * Public Service Implement
 *
 * @author 	Tab Tu
 * @date	2018-02-09
 * @update  Tab Tu on Feb.11 2018
 * @since	1.0
 *
 */

@Service
public class PublicServiceImpl implements PublicService {

    @Autowired
    private ClubRepo clubRepo;

    @Autowired
    private VenueRepo venueRepo;

    @Autowired
    private UserRepo userRepo;

    @Autowired
    private VnewsRepo vnewsRepo;

    @Override
    public List<Club> getSchoolList(int page) {
        Page<Club> tmp = clubRepo.findClubsBySchoolOrderBySortDesc(true, new PageRequest(page, Const.PAGE_SIZE_TEN));
        return tmp.getContent();
    }

    @Override
    public List<Club> getClubList(int page) {
        Page<Club> tmp = clubRepo.findClubsBySchoolOrderBySortDesc(false, new PageRequest(page, Const.PAGE_SIZE_TEN));
        return tmp.getContent();
    }

    @Override
    public List<Club> getClubAndSchoolByNameLike(String name, int page) {
        Page<Club> tmp = clubRepo.findClubsByNameLikeOrderBySortDesc(name, new PageRequest(page, Const.PAGE_SIZE_TWENTY));
        return tmp.getContent();
    }

    @Override
    public List<Club> getClubListByDistrictId(int id, int page) {
        Page<Club> tmp = clubRepo.findClubsBySchoolAndDistrict_IdOrderBySortDesc(false, id, new PageRequest(page, Const.PAGE_SIZE_TEN));
        return tmp.getContent();
    }

    @Override
    public List<Club> getClubListByCityId(int id, int page) {
        Page<Club> tmp = clubRepo.findClubsBySchoolAndDistrict_City_IdOrderBySortDesc(false, id, new PageRequest(page, Const.PAGE_SIZE_TEN));
        return tmp.getContent();
    }

    @Override
    public List<Club> getSchoolListByDistrictId(int id, int page) {
        Page<Club> tmp = clubRepo.findClubsBySchoolAndDistrict_IdOrderBySortDesc(true, id, new PageRequest(page, Const.PAGE_SIZE_TEN));
        return tmp.getContent();
    }

    @Override
    public List<Club> getSchoolListByCityId(int id, int page) {
        Page<Club> tmp = clubRepo.findClubsBySchoolAndDistrict_City_IdOrderBySortDesc(true, id, new PageRequest(page, Const.PAGE_SIZE_TEN));
        return tmp.getContent();
    }

    @Override
    public List<Venue> getVenueListByNameLike(String name, int page) {
        Page<Venue> tmp = venueRepo.findVenuesByNameLikeOrderBySortDesc(name, new PageRequest(page, Const.PAGE_SIZE_TEN));
        return tmp.getContent();
    }

    @Override
    public List<Venue> getVenueListByDistrictId(int id, int page) {
        Page<Venue> tmp = venueRepo.findVenuesByDistrict_IdOrderBySortDesc(id, new PageRequest(page, Const.PAGE_SIZE_TEN));
        return tmp.getContent();
    }

    @Override
    public List<Venue> getVenueListByCityId(int id, int page) {
        Page<Venue> tmp = venueRepo.findVenuesByDistrict_City_IdOrderBySortDesc(id, new PageRequest(page, Const.PAGE_SIZE_TEN));
        return tmp.getContent();
    }

    @Override
    public List<Venue> getVenueList(int page) {
        Page<Venue> tmp = venueRepo.findAllByOrderBySortDesc(new PageRequest(page, Const.PAGE_SIZE_TEN));
        return tmp.getContent();
    }

    @Override
    public List<User> findUserAll() {
        return userRepo.findUsersByEnabled(true);
    }

    @Override
    public List<VNews> getVNewsListByVenueId(int venueid, int page) {
        Pageable pageable = new PageRequest(page, Const.PAGE_SIZE_FIVE);
        Page<VNews> tmp = vnewsRepo.findVNewsByVenue_Id(venueid, pageable);
        return tmp.getContent();
    }

    @Override
    public List<User> findUserByType(int type) {
        if (type == 0) {
            return userRepo.findUsersByAthleteNotNull();
        } else if (type == 1) {
            return userRepo.findUsersByCoachNotNull();
        } else if (type == 2) {
            return userRepo.findUsersByRefereeNotNull();
        } else {
            return userRepo.findAll();
        }
    }

    @Override
    public User findUserByUserId(String user_id) {
        return userRepo.findOne(user_id);
    }

    @Override
    public User findUserByUserName(String username) {
        return userRepo.findUserByUsername(username);
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