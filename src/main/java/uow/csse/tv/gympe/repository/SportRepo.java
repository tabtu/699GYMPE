package uow.csse.tv.gympe.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import uow.csse.tv.gympe.model.Sport;
import uow.csse.tv.gympe.model.User;

import java.util.List;

@Repository
public interface SportRepo extends JpaRepository<Sport, Integer> {
    List<Sport> findAll();
}
