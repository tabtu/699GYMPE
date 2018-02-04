package uow.csse.tv.gympe.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import uow.csse.tv.gympe.model.Message;
import uow.csse.tv.gympe.model.Msg;

/**
 * Message Repository Interface
 *
 * @author 	Tab Tu
 * @date	2018-01-30
 * @update  Tab Tu on Feb.03 2018
 * @since	1.0
 *
 */

@Repository
public interface MessageRepo extends JpaRepository<Message, Msg> {

}