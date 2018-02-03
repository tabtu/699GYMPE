package uow.csse.tv.gympe.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import uow.csse.tv.gympe.model.Message;
import uow.csse.tv.gympe.model.Msg;

@Repository
public interface MessageRepo extends JpaRepository<Message, Msg> {

}