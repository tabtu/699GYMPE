package uow.csse.tv.gympe.service.impl;

import antlr.debug.MessageAdapter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import uow.csse.tv.gympe.config.Const;
import uow.csse.tv.gympe.model.*;
import uow.csse.tv.gympe.repository.*;
import uow.csse.tv.gympe.service.UserService;

import javax.xml.bind.annotation.XmlEnumValue;
import java.util.Date;
import java.util.List;

/**
 * Login Service Implement
 *
 * @author 	Tab Tu
 * @date	2018-01-30
 * @update  Tab Tu on Feb.03 2018
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
    private VenueRepo venueRepo;

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
}
