package uow.csse.tv.gympe.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.*;
import uow.csse.tv.gympe.model.*;
import uow.csse.tv.gympe.service.LoginService;
import uow.csse.tv.gympe.service.PublicService;
import uow.csse.tv.gympe.service.SystemService;
import uow.csse.tv.gympe.service.UserService;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

@RestController
public class PublicView {

    @Autowired
    private PublicService pubService;

    @Autowired
    private SystemService sysService;

    @GetMapping(value = "/sport")
    public List<Sport> getSportList() {
        return sysService.getSportList();
    }

    @GetMapping(value = "/city")
    public List<City> getCityList() {
        return sysService.getCityList();
    }

    @GetMapping(value = "/district{city}")
    public List<District> getDistrictList(HttpServletRequest request) {
        String city = request.getParameter("city");
        return sysService.getDistrictListByCity(Integer.parseInt(city));
    }

    @GetMapping(value = "/home")
    public List<News> getHomeList() {
        return pubService.getHomeNewsList();
    }

    @GetMapping(value = "/news{page}")
    public List<News> getNewsList(HttpServletRequest request) {
        String page = request.getParameter("page");
        return pubService.getNewsList(Integer.parseInt(page));
    }

    @RequestMapping(value = "/club{page}", method = RequestMethod.GET)
    public List<Club> getClubList(HttpServletRequest request) {
        String page = request.getParameter("page");
//        String dist = request.getParameter("dist");
        return pubService.getClubList(Integer.parseInt(page));
    }

    @GetMapping(value = "/test")
    public Msg test() {
        Msg m = new Msg("tabtu", "123456", new Date(Long.parseLong("1519169347000") * 1000));
        return m;
    }

    @RequestMapping(value = "/school{page}", method = RequestMethod.GET)
    public List<Club> getSchoolList(HttpServletRequest request) {
        String page = request.getParameter("page");
        return pubService.getSchoolList(Integer.parseInt(page));
    }

    @RequestMapping(value = "/venue{page}", method = RequestMethod.GET)
    public List<Venue> getVenuelist(HttpServletRequest request) {
        String page = request.getParameter("page");
        return pubService.getVenueList(Integer.parseInt(page));
    }

    @RequestMapping(value = "/vnews{id}{page}", method = RequestMethod.GET)
    public List<VNews> getVNewsPages(HttpServletRequest request) {
        String id = request.getParameter("id");
        String page = request.getParameter("page");
        return pubService.getVNewsListByVenueId(Integer.parseInt(id), Integer.parseInt(page));
    }
}
