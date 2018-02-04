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
}
