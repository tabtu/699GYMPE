package uow.csse.tv.gympe.service;

import uow.csse.tv.gympe.model.Activity;

import java.util.List;

/**
 * Sport Service Interface
 *
 * @author 	Tab Tu
 * @date	2018-02-23
 * @update  Tab Tu on Feb.23 2018
 * @since	1.0
 *
 */

public interface ActivityService {

    Activity saveActivity(Activity activity);

    Activity getActivity(String id);

    List<Activity> getActivityByClub(int id, int page);

    List<Activity> getActivityByVenue(int id, int page);

    List<Activity> getActivityForHomepage(int page);

}
