package uow.csse.tv.gympe.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import uow.csse.tv.gympe.model.Activity;
import uow.csse.tv.gympe.model.Club;
import uow.csse.tv.gympe.model.User;
import uow.csse.tv.gympe.model.Venue;
import uow.csse.tv.gympe.service.SearchService;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
@RequestMapping("/sh")
public class SearchView {
    @Autowired
    private SearchService searchService;

    @GetMapping(value = "/user{type}{name}{page}")
    public List<User> searchUser(HttpServletRequest request) {
        String type = request.getParameter("type");
        String name = request.getParameter("name");
        String page = request.getParameter("page");
        int ipg = Integer.parseInt(page);
        if (type.equals("athlete")) {
            return searchService.searchAthlete(name, ipg);
        } else if (type.equals("coach")) {
            return searchService.searchCoach(name, ipg);
        } else if (type.equals("referee")) {
            return searchService.searchReferee(name, ipg);
        } else {
            return searchService.searchUser(name, ipg);
        }
    }

    @GetMapping(value = "/venue{name}{page}")
    public List<Venue> searchVenue(HttpServletRequest request) {
        String name = request.getParameter("name");
        String page = request.getParameter("page");
        return searchService.searchVenue(name, Integer.parseInt(page));
    }

    @GetMapping(value = "/club{type}{name}{page}")
    public List<Club> searchClub(HttpServletRequest request) {
        String type = request.getParameter("type");
        String name = request.getParameter("name");
        String page = request.getParameter("page");
        if (type.equals("club")) {
            return searchService.searchClub(name, Integer.parseInt(page));
        } else {
            return searchService.searchSchool(name, Integer.parseInt(page));
        }
    }

    @GetMapping(value = "/activity{name}{page}")
    public List<Activity> searchActivity(HttpServletRequest request) {
        String name = request.getParameter("name");
        String page = request.getParameter("page");
        return searchService.searchActivity(name, Integer.parseInt(page));
    }
}