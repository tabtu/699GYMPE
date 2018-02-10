package uow.csse.tv.gympe.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import uow.csse.tv.gympe.model.*;
import uow.csse.tv.gympe.service.LoginService;
import uow.csse.tv.gympe.service.UserService;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

@RestController
public class PublicView {
    @Autowired
    private UserService userServ;

    @Autowired
    private LoginService lgServ;

    @RequestMapping(value = "/sport", method = RequestMethod.GET)
    public List<Sport> getSportlist(HttpServletRequest request) {
        return userServ.findSportAll();
    }

    @GetMapping(value = "/club")
    public List<Club> getClublist() {
        return userServ.findClubAll();
    }

    @GetMapping(value = "/school")
    public List<Club> getSchoollist() {
        return userServ.findSchoolAll();
    }

    @GetMapping(value = "/venue")
    public List<Venue> getVenuelist() {
        return userServ.findVenueAll();
    }

//    @RequestMapping(value = "/userlist{type}", method = RequestMethod.GET)
//    public List<User> getUserlist(HttpServletRequest request) {
//        String str = request.getParameter("type");
//        int type = Integer.parseInt(str);
//        return userServ.findUserList(type);
//    }

    @RequestMapping(value = "/user{usid}", method = RequestMethod.GET)
    public User getUser(HttpServletRequest request) {
        String str = request.getParameter("usid");
        long usid = Long.parseLong(str);
        return userServ.findUser(usid);
    }

    @RequestMapping(value = "/user{usnm}", method = RequestMethod.GET)
    public User getUser0(HttpServletRequest request) {
        String usnm = request.getParameter("usnm");
        return userServ.findUser(usnm);
    }

//    @RequestMapping(value = "/user{type}{exid}", method = RequestMethod.GET)
//    public User getUser1(HttpServletRequest request) {
//        String str0 = request.getParameter("type");
//        String str1 = request.getParameter("exid");
//        int type = Integer.parseInt(str0);
//        int exid = Integer.parseInt(str1);
//        return userServ.findUser(type, exid);
//    }

    @GetMapping(value = "/regist")
    public boolean regist() {
        User u = new User();
        u.setUsername("tabtu");
        u.setPassword("Ttxy1234567890@");
        u.setEmail("i@tabtu.cn");
        u.setCreateTime(new Date());
        u.setEnabled(true);
        u.setIntroduction("intro.ttxy");
        u.setLastModifyTime(new Date());
        u.setProfilePicture("ttxy.png");
        return lgServ.register(u);
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public int login(@RequestParam("usr") String username,
                     @RequestParam("pwd") String password) {
        User usr = new User(username, password);
        return lgServ.login(usr);
    }

    @RequestMapping(value = "/test", method = RequestMethod.POST)
    @ResponseBody
    public int test(@RequestParam("usr") User user) {
        return lgServ.login(user);
    }
}
