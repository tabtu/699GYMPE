package uow.csse.tv.gympe.service;

import uow.csse.tv.gympe.model.Running;
import uow.csse.tv.gympe.model.RunningMan;

import java.util.List;

/**
 * Running Service Interface
 *
 * @author 	Tab Tu
 * @date	2018-01-30
 * @update  Tab Tu on Feb.12 2018
 * @since	1.0
 *
 */

public interface RunningService {

    RunningMan addRunner(String name);

    Running logRunner(String uid, String rmid, String location);

    List<Running> reportLoger(String uid);

    List<Running> reportRunner(String rmid);

    List<RunningMan> searchRunner(String name);

    List<Running> reportALL();
}
