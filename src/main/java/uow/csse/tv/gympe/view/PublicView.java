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

    @GetMapping(value = "/home{city}")
    public List<News> getHomeList(HttpServletRequest request) {
        String city = request.getParameter("city");
        return pubService.getHomeNewsList(Integer.parseInt(city));
    }

    @GetMapping(value = "/news{city}{page}")
    public List<News> getNewsList(HttpServletRequest request) {
        String city = request.getParameter("city");
        String page = request.getParameter("page");
        return pubService.getNewsList(Integer.parseInt(city), Integer.parseInt(page));
    }

    @RequestMapping(value = "/club{city}{page}", method = RequestMethod.GET)
    public List<Club> getClubList(HttpServletRequest request) {
        String city = request.getParameter("city");
        String page = request.getParameter("page");
        return pubService.getClubListByCityId(Integer.parseInt(city), Integer.parseInt(page));
    }

    @RequestMapping(value = "/cdetail{id}", method = RequestMethod.GET)
    public Club getClubDetail(HttpServletRequest request) {
        String id = request.getParameter("id");
        return pubService.getClub(Integer.parseInt(id));
    }

    @RequestMapping(value = "/vdetail{id}", method = RequestMethod.GET)
    public Venue getVenueDetail(HttpServletRequest request) {
        String id = request.getParameter("id");
        return pubService.getVenue(Integer.parseInt(id));
    }

    @RequestMapping(value = "/school{city}{page}", method = RequestMethod.GET)
    public List<Club> getSchoolList(HttpServletRequest request) {
        String city = request.getParameter("city");
        String page = request.getParameter("page");
        return pubService.getSchoolListByCityId(Integer.parseInt(city), Integer.parseInt(page));
    }

    @RequestMapping(value = "/cnews{id}{page}", method = RequestMethod.GET)
    public List<CNews> getCNewsPages(HttpServletRequest request) {
        String id = request.getParameter("id");
        String page = request.getParameter("page");
        return pubService.getCNewsListByClubId(Integer.parseInt(id), Integer.parseInt(page));
    }

    @RequestMapping(value = "/venue{city}{page}", method = RequestMethod.GET)
    public List<Venue> getVenuelist(HttpServletRequest request) {
        String city = request.getParameter("city");
        String page = request.getParameter("page");
        return pubService.getVenueListByCityId(Integer.parseInt(city), Integer.parseInt(page));
    }

    @RequestMapping(value = "/vnews{id}{page}", method = RequestMethod.GET)
    public List<VNews> getVNewsPages(HttpServletRequest request) {
        String id = request.getParameter("id");
        String page = request.getParameter("page");
        return pubService.getVNewsListByVenueId(Integer.parseInt(id), Integer.parseInt(page));
    }
}
