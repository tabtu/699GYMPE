package uow.csse.tv.gympe.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import uow.csse.tv.gympe.model.User;
import uow.csse.tv.gympe.service.LoginService;

import javax.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("/reg")
public class RegistView {
    @Autowired
    private LoginService loginService;

    @RequestMapping(value = "/tl", method = RequestMethod.POST)
    @ResponseBody
    public User loginustl(@RequestParam("usr") String usertl,
                          @RequestParam("pwd") String password) {
        User usr = new User(password, null, null, usertl);
        return loginService.register(usr);
    }
}