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
    private LoginService lgServ;

    @Autowired
    private PublicService pubService;

    @Autowired
    private SystemService sysService;

    @GetMapping(value = "/sport")
    public List<Sport> getSportList() {
        return sysService.getSportList();
    }

    @RequestMapping(value = "/club{page}", method = RequestMethod.GET)
    public List<Club> getClubList(HttpServletRequest request) {
        String page = request.getParameter("page");
        return pubService.getClubList(Integer.parseInt(page));
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

    @GetMapping(value = "/user")
    public List<User> getUserlist() {
        return pubService.findUserAll();
    }

    @RequestMapping(value = "/usid{id}", method = RequestMethod.GET)
    public User getUser(HttpServletRequest request) {
        String tmp = request.getParameter("id");
        return pubService.findUserByUserId(tmp);
    }

    @RequestMapping(value = "/usnm{nm}", method = RequestMethod.GET)
    public User getUser0(HttpServletRequest request) {
        String tmp = request.getParameter("nm");
        return pubService.findUserByUserName(tmp);
    }
//
//    @RequestMapping(value = "/vnews{v0}", method = RequestMethod.GET)
//    public List<VNews> getVnews(HttpServletRequest request) {
//        String tmp = request.getParameter("v0");
//        return pubService.findVNewsByVenueId(Integer.parseInt(tmp));
//    }

    @RequestMapping(value = "/ustp{v0}", method = RequestMethod.GET)
    public List<User> getUserbyType(HttpServletRequest request) {
        String tmp = request.getParameter("v0");
        int type = Integer.parseInt(tmp);
        return pubService.findUserByType(type);
    }

//    @RequestMapping(value = "/user{type}{exid}", method = RequestMethod.GET)
//    public User getUser1(HttpServletRequest request) {
//        String str0 = request.getParameter("type");
//        String str1 = request.getParameter("exid");
//        int type = Integer.parseInt(str0);
//        int exid = Integer.parseInt(str1);
//        return userServ.fin(type, exid);
//    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public int login(@RequestParam("usr") String username,
                     @RequestParam("pwd") String password) {
        User usr = new User(username, password);
        return lgServ.login(usr);
    }
}
