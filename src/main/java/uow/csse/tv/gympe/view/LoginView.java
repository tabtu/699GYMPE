package uow.csse.tv.gympe.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import uow.csse.tv.gympe.model.User;
import uow.csse.tv.gympe.service.LoginService;

import javax.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("/lg")
public class LoginView {
    @Autowired
    private LoginService loginService;

    @RequestMapping(value = "/nm", method = RequestMethod.POST)
    @ResponseBody
    public User loginusnm(@RequestParam("usr") String username,
                          @RequestParam("pwd") String password) {
        User usr = new User(password, username, null, null);
        return loginService.login(usr, 1);
    }

    @RequestMapping(value = "/id", method = RequestMethod.POST)
    @ResponseBody
    public User loginusid(@RequestParam("usr") String userid,
                          @RequestParam("pwd") String password) {
        User usr = new User(password, userid);
        return loginService.login(usr, 0);
    }

    @RequestMapping(value = "/em", method = RequestMethod.POST)
    @ResponseBody
    public User loginusem(@RequestParam("usr") String userem,
                          @RequestParam("pwd") String password) {
        User usr = new User(password, null, userem, null);
        return loginService.login(usr, 2);
    }

    @RequestMapping(value = "/tl", method = RequestMethod.POST)
    @ResponseBody
    public User loginustl(@RequestParam("usr") String usertl,
                          @RequestParam("pwd") String password) {
        User usr = new User(password, null, null, usertl);
        return loginService.login(usr, 4);
    }

//    @RequestMapping(value = "/wx", method = RequestMethod.POST)
//    @ResponseBody
//    public User loginuswx(@RequestParam("usr") String userwt,
//                          @RequestParam("pwd") String password) {
//        User usr = new User(password, );
//        return loginService.login(usr, 3);
//    }

    @RequestMapping(value = "/usid{id}", method = RequestMethod.GET)
    public User getUser(HttpServletRequest request) {
        String tmp = request.getParameter("id");
        return loginService.getUser(tmp);
    }

    @RequestMapping(value = "/user{str}", method = RequestMethod.GET)
    public User getUser0(HttpServletRequest request) {
        String str = request.getParameter("str");
        return loginService.getUser(str, str, str);
    }
}
