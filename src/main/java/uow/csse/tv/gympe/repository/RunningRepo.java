package uow.csse.tv.gympe.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import uow.csse.tv.gympe.model.Referee;
import uow.csse.tv.gympe.model.Running;
import uow.csse.tv.gympe.model.RunningMan;

import java.util.Date;
import java.util.List;

/**
 * Running Repository Interface
 *
 * @author 	Tab Tu
 * @date	2018-10-23
 * @since	1.0
 *
 */

@Repository
public interface RunningRepo extends JpaRepository<Running, Integer> {

    List<Running> findByRunnerOrderByDateDesc(RunningMan runner);

    List<Running> findByDateBetween(Date d1, Date d2);
}