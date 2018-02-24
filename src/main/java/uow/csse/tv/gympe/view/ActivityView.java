package uow.csse.tv.gympe.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import uow.csse.tv.gympe.model.Activity;
import uow.csse.tv.gympe.model.Venue;
import uow.csse.tv.gympe.service.ActivityService;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
@RequestMapping("/act")
public class ActivityView {
    @Autowired
    private ActivityService activityService;

    @RequestMapping(value = "/detail{id}", method = RequestMethod.GET)
    public Activity getActivity(HttpServletRequest request) {
        String id = request.getParameter("id");
        return activityService.getActivity(id);
    }

    @RequestMapping(value = "/club{id}{page}", method = RequestMethod.GET)
    public List<Activity> getClubActivitylist(HttpServletRequest request) {
        String id = request.getParameter("id");
        String page = request.getParameter("page");
        return activityService.getActivityByClub(Integer.parseInt(id), Integer.parseInt(page));
    }

    @RequestMapping(value = "/venue{id}{page}", method = RequestMethod.GET)
    public List<Activity> getVenueActivitylist(HttpServletRequest request) {
        String id = request.getParameter("id");
        String page = request.getParameter("page");
        return activityService.getActivityByVenue(Integer.parseInt(id), Integer.parseInt(page));
    }
}
