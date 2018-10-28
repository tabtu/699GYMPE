package uow.csse.tv.gympe.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import uow.csse.tv.gympe.config.Const;
import uow.csse.tv.gympe.model.*;
import uow.csse.tv.gympe.repository.*;
import uow.csse.tv.gympe.service.UserService;

import java.util.Date;
import java.util.List;

/**
 * Login Service Implement
 *
 * @author 	Tab Tu
 * @date	2018-01-30
 * @update  Tab Tu on Mar.05 2018
 * @since	1.0
 *
 */

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private SportRepo sportRepo;

    @Autowired
    private ClubRepo clubRepo;

    @Autowired
    private UserRepo userRepo;

    @Autowired
    private MessageRepo messageRepo;

    @Autowired
    private VnewsRepo vnewsRepo;

    @Autowired
    private AthleteRepo athleteRepo;

    @Autowired
    private CoachRepo coachRepo;

    @Autowired
    private RefereeRepo refereeRepo;

    @Autowired
    private ActOdsRepo actOdsRepo;

    @Autowired
    private ActivityRepo activityRepo;

    @Autowired
    private LogRepo logRepo;

    @Autowired
    private RunningManRepo runningManRepo;

    @Override
    public List<User> getAllUsers(int page) {
        Pageable pageable = new PageRequest(page, Const.PAGE_SIZE_TWENTY);
        Page<User> tmp = userRepo.findUsersByEnabled(true, pageable);
        return tmp.getContent();
    }

    @Override
    public User getUser(String id) {
        return userRepo.findOne(id);
    }

    @Override
    public User addFollowed(String user, String follow) {
        User u = userRepo.findOne(user);
        User adu = userRepo.findOne(follow);
        List<User> tmp = u.getFollows();
        tmp.add(adu);
        u.setFollows(tmp);
        return userRepo.save(u);
    }

    @Override
    public User deleteFollowed(String user, String follow) {
        User u = userRepo.findOne(user);
        User deu = userRepo.findOne(follow);
        List<User> tmp = u.getFollows();
        tmp.remove(deu);
        u.setFollows(tmp);
        return userRepo.save(u);
    }

    @Override
    public User addJoin(String user, int join) {
        User u = userRepo.findOne(user);
        Club adc = clubRepo.findOne(join);
        List<Club> tmp = u.getClubs();
        tmp.add(adc);
        u.setClubs(tmp);
        Log log = new Log(u, new Date(), "join club #" + adc.getId());
        logRepo.save(log);
        return userRepo.save(u);
    }

    @Override
    public User deleteJoin(String user, int join) {
        User u = userRepo.findOne(user);
        Club deu = clubRepo.findOne(join);
        List<Club> tmp = u.getClubs();
        tmp.remove(deu);
        u.setClubs(tmp);
        Log log = new Log(u, new Date(), "leave club #" + deu.getId());
        logRepo.save(log);
        return userRepo.save(u);
    }

    @Override
    public void saveVNews(VNews vnews) {
        vnewsRepo.save(vnews);
    }

    @Override
    public void saveAthlete(Athlete athlete) {
        athleteRepo.save(athlete);
    }

    @Override
    public void saveCoach(Coach coach) {
        coachRepo.save(coach);
    }

    @Override
    public void saveReferee(Referee referee) {
        refereeRepo.save(referee);
    }

    @Override
    public List<Message> inboxMessage(String receiver, int page) {
        Pageable pageable = new PageRequest(page, Const.PAGE_SIZE_TWENTY);
        Page<Message> tmp = messageRepo.findMessagesById_ReceiverOrderByLogtimeDesc(receiver, pageable);
        return tmp.getContent();
    }

    @Override
    public
    List<Message> outboxMessage(String sender, int page) {
        Pageable pageable = new PageRequest(page, Const.PAGE_SIZE_TWENTY);
        Page<Message> tmp = messageRepo.findMessagesById_SenderOrderByLogtimeDesc(sender, pageable);
        return tmp.getContent();
    }

    @Override
    public
    Message sendMessage(Message message) {
        message.setIsread(false);
        message.setLogtime(new Date());
        return messageRepo.save(message);
    }

    @Override
    public Message checkMessage(Msg msg) {
        Message tmp = messageRepo.findOne(msg);
        if (tmp.getIsread() == false) {
            tmp.setIsread(true);
            return messageRepo.save(tmp);
        } else {
            return tmp;
        }
    }

    @Override
    public void deleteMessage(Msg msg) {
        messageRepo.delete(msg);
    }

    @Override
    public List<ActOds> orderList(String usid, boolean paid, int page) {
        Pageable pageable = new PageRequest(page, Const.PAGE_SIZE_FIVE);
        Page<ActOds> tmp = actOdsRepo.findActOdsByUser_IdAndIspaid(usid, paid, pageable);
        return tmp.getContent();
    }

    @Override
    public List<ActOds> memberList(String actid, int page) {
        Pageable pageable = new PageRequest(page, Const.PAGE_SIZE_TWENTY);
        Page<ActOds> tmp = actOdsRepo.findActOdsByActivity_Id(actid, pageable);
        return tmp.getContent();
    }

    @Override
    public ActOds getActivityOrder(String actodsid) {
        return actOdsRepo.findOne(actodsid);
    }

    @Override
    public void bookorder(String usid, String actid, int count) {
        User user = userRepo.findOne(usid);
        Activity activity = activityRepo.findOne(actid);
        ActOds booking = new ActOds(activity, user, new Date(), count);
        booking = actOdsRepo.save(booking);
        Log log = new Log(user, new Date(), "book order #" + booking.getId());
        logRepo.save(log);
    }

    @Override
    public boolean payOrder(String actodsid) {
        ActOds tmp = actOdsRepo.findOne(actodsid);
        if (tmp.getIspaid() == true) {
            return false;
        } else {
            tmp.setIspaid(true);
            tmp.setPdate(new Date());
            actOdsRepo.save(tmp);
            Log log = new Log(tmp.getUser(), new Date(), "pay order #" + tmp.getId());
            logRepo.save(log);
            return true;
        }
    }

}
