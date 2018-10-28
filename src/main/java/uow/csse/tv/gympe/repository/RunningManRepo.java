package uow.csse.tv.gympe.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import uow.csse.tv.gympe.model.Referee;
import uow.csse.tv.gympe.model.RunningMan;

import java.util.List;

/**
 * RunningMan Repository Interface
 *
 * @author 	Tab Tu
 * @date	2018-10-23
 * @since	1.0
 *
 */

@Repository
public interface RunningManRepo extends JpaRepository<RunningMan, Integer> {

    List<RunningMan> findByName(String name);
}