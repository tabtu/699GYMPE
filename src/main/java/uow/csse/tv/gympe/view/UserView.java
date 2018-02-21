package uow.csse.tv.gympe.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import uow.csse.tv.gympe.model.Message;
import uow.csse.tv.gympe.model.Msg;
import uow.csse.tv.gympe.model.User;
import uow.csse.tv.gympe.service.LoginService;
import uow.csse.tv.gympe.service.UserService;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

@RestController
@RequestMapping("/us")
public class UserView {
    @Autowired
    private UserService userService;

    @RequestMapping(value = "/sd", method = RequestMethod.POST)
    @ResponseBody
    public Message sendMessage(@RequestParam("sen") String sender,
                          @RequestParam("rec") String receiver,
                          @RequestParam("text") String text) {
        Message message = new Message(new Msg(sender, receiver), text);
        return userService.sendMessage(message);
    }

    @GetMapping(value = "/in{rec}{page}")
    public List<Message> getInbox(HttpServletRequest request) {
        String receiver = request.getParameter("rec");
        String page = request.getParameter("page");
        return userService.inboxMessage(receiver, Integer.parseInt(page));
    }

    @GetMapping(value = "/out{sen}{page}")
    public List<Message> getOutbox(HttpServletRequest request) {
        String sender = request.getParameter("sen");
        String page = request.getParameter("page");
        return userService.outboxMessage(sender, Integer.parseInt(page));
    }

    @RequestMapping(value = "/chk{sen}{rec}{sedt}", method = RequestMethod.GET)
    @ResponseBody
    public Message checkMessage(@RequestParam("sen") String sender,
                               @RequestParam("rec") String receiver,
                               @RequestParam("sedt") String sendtime) {
        return userService.checkMessage(new Msg(sender, receiver, new Date(Long.parseLong(sendtime))));
    }
}