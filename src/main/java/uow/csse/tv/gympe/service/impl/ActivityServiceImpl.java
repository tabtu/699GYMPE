package uow.csse.tv.gympe.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import uow.csse.tv.gympe.config.Const;
import uow.csse.tv.gympe.model.Activity;
import uow.csse.tv.gympe.model.Club;
import uow.csse.tv.gympe.model.Venue;
import uow.csse.tv.gympe.repository.ActOdsRepo;
import uow.csse.tv.gympe.repository.ActivityRepo;
import uow.csse.tv.gympe.service.ActivityService;

import java.util.List;

/**
 * Login Service Implement
 *
 * @author 	Tab Tu
 * @date	2018-02-23
 * @update  Tab Tu on Feb.23 2018
 * @since	1.0
 *
 */

@Service
public class ActivityServiceImpl implements ActivityService {

    @Autowired
    private ActivityRepo activityRepo;

    @Autowired
    private ActOdsRepo actOdsRepo;

    @Override
    public Activity saveActivity(Activity activity) {
        return activityRepo.save(activity);
    }

    @Override
    public Activity getActivity(String id) {
        return activityRepo.findOne(id);
    }

    @Override
    public List<Activity> getActivityByClub(int id, int page) {
        Page<Activity> tmp = activityRepo.findActivitiesByClubsContainingOrderByEnddateDesc(new Club(id), new PageRequest(page, Const.PAGE_SIZE_TEN));
        return tmp.getContent();
    }

    @Override
    public List<Activity> getActivityByVenue(int id, int page) {
        Page<Activity> tmp = activityRepo.findActivitiesByVenuesContainingOrderByEnddateDesc(new Venue(id), new PageRequest(page, Const.PAGE_SIZE_TEN));
        return tmp.getContent();
    }

    @Override
    public List<Activity> getActivityForHomepage(int page) {
        Page<Activity> tmp = activityRepo.findActivitiesByAvaliableOrderBySortDesc(true, new PageRequest(page, Const.PAGE_SIZE_TEN));
        return tmp.getContent();
    }

}
