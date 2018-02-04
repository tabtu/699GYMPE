package uow.csse.tv.gympe.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import uow.csse.tv.gympe.model.Club;
import uow.csse.tv.gympe.model.School;
import uow.csse.tv.gympe.model.Sport;
import uow.csse.tv.gympe.model.Venue;
import uow.csse.tv.gympe.service.UserService;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
public class PublicView {
    @Autowired
    private UserService userServ;

    @RequestMapping(value = "/sport", method = RequestMethod.GET)
    public List<Sport> getSportlist(HttpServletRequest request) {
        return userServ.findSportAll();
    }

    @GetMapping(value = "/school")
    public List<School> getSchoollist() {
        return userServ.findSchoolALL();
    }

    @GetMapping(value = "/club")
    public List<Club> getClublist() {
        return userServ.findClubAll();
    }

    @GetMapping(value = "/venue")
    public List<Venue> getVenuelist() {
        return userServ.findVenueAll();
    }
}
