package uow.csse.tv.gympe.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import uow.csse.tv.gympe.model.Message;
import uow.csse.tv.gympe.model.Msg;
import uow.csse.tv.gympe.model.Msgs;
import uow.csse.tv.gympe.model.User;
import uow.csse.tv.gympe.service.UserService;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
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
    public List<Msgs> getInbox(HttpServletRequest request) {
        String receiver = request.getParameter("rec");
        String page = request.getParameter("page");
        List<Msgs> result = new ArrayList<>();
        for (Message ele : userService.inboxMessage(receiver, Integer.parseInt(page))) {
            result.add(new Msgs(ele.getId().getSender(), ele.getId().getReceiver(), ele.getId().getSendtime(), ele.getText(), ele.getIsread()));
        }
        return result;
    }

    @GetMapping(value = "/out{sen}{page}")
    public List<Msgs> getOutbox(HttpServletRequest request) {
        String sender = request.getParameter("sen");
        String page = request.getParameter("page");
        List<Msgs> result = new ArrayList<>();
        for (Message ele : userService.outboxMessage(sender, Integer.parseInt(page))) {
            result.add(new Msgs(ele.getId().getSender(), ele.getId().getReceiver(), ele.getId().getSendtime(), ele.getText(), ele.getIsread()));
        }
        return result;
    }

    @RequestMapping(value = "/chk{sen}{rec}{sedt}", method = RequestMethod.GET)
    @ResponseBody
    public Message checkMessage(@RequestParam("sen") String sender,
                               @RequestParam("rec") String receiver,
                               @RequestParam("sedt") String sendtime) {
        return userService.checkMessage(new Msg(sender, receiver, new Date(Long.parseLong(sendtime))));
    }

    @RequestMapping(value = "/del{sen}{rec}{sedt}", method = RequestMethod.POST)
    @ResponseBody
    public String deleteMessage(@RequestParam("sen") String sender,
                                @RequestParam("rec") String receiver,
                                @RequestParam("sedt") String sendtime) {
        try {
            userService.deleteMessage(new Msg(sender, receiver, new Date(Long.parseLong(sendtime))));
            return "true";
        } catch (Exception e) {
            return "false";
        }
    }

//    @RequestMapping(value = "/aduf{usr}{fol}", method = RequestMethod.POST)
//    @ResponseBody
//    public String addFollowed(@RequestParam("usr") String user,
//                                @RequestParam("fol") String follow) {
//        try {
//            userService.addFollowed(user, follow);
//            return "true";
//        } catch (Exception e) {
//            return "false";
//        }
//    }
//
//    @RequestMapping(value = "/deuf{usr}{fol}", method = RequestMethod.POST)
//    @ResponseBody
//    public String deleteFollowed(@RequestParam("usr") String user,
//                                @RequestParam("fol") String follow) {
//        try {
//            userService.deleteFollowed(user, follow);
//            return "true";
//        } catch (Exception e) {
//            return "false";
//        }
//    }

    @RequestMapping(value = "/aduj{usr}{club}", method = RequestMethod.POST)
    @ResponseBody
    public String addJoin(@RequestParam("usr") String user,
                          @RequestParam("club") String club) {
        try {
            userService.addJoin(user, Integer.parseInt(club));
            return "true";
        } catch (Exception e) {
            return "false";
        }
    }

    @RequestMapping(value = "/deuj{usr}{club}", method = RequestMethod.POST)
    @ResponseBody
    public String deleteJoin(@RequestParam("usr") String user,
                                 @RequestParam("club") String club) {
        try {
            userService.deleteJoin(user, Integer.parseInt(club));
            return "true";
        } catch (Exception e) {
            return "false";
        }
    }

    @GetMapping(value = "/all{page}")
    public List<User> getAllUser(HttpServletRequest request) {
        String page = request.getParameter("page");
        return userService.getAllUsers(Integer.parseInt(page));
    }

    @GetMapping(value = "/detail{id}")
    public User getUserDetail(HttpServletRequest request) {
        String id = request.getParameter("id");
        return userService.getUser(id);
    }
}