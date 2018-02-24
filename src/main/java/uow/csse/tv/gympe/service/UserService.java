package uow.csse.tv.gympe.service;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import uow.csse.tv.gympe.model.*;

import java.util.List;

/**
 * Sport Service Interface
 *
 * @author 	Tab Tu
 * @date	2018-01-30
 * @update  Tab Tu on Feb.03 2018
 * @since	1.0
 *
 */

public interface UserService {

    List<User> getAllUsers(int page);

    User getUser(String id);

    void saveVNews(VNews vnews);

    void saveAthlete(Athlete athlete);

    void saveCoach(Coach coach);

    void saveReferee(Referee referee);

    List<Message> inboxMessage(String receiver, int page);

    List<Message> outboxMessage(String sender, int page);

    Message sendMessage(Message message);

    Message checkMessage(Msg msg);

    void deleteMessage(Msg msg);
}