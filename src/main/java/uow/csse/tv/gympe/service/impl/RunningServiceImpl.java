package uow.csse.tv.gympe.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import uow.csse.tv.gympe.model.Running;
import uow.csse.tv.gympe.model.RunningMan;
import uow.csse.tv.gympe.model.User;
import uow.csse.tv.gympe.repository.RunningManRepo;
import uow.csse.tv.gympe.repository.RunningRepo;
import uow.csse.tv.gympe.repository.UserRepo;
import uow.csse.tv.gympe.service.RunningService;

import java.util.Date;
import java.util.List;

/**
 * Running Service Implement
 *
 * @author 	Tab Tu
 * @date	2018-10-30
 * @since	1.0
 *
 */

@Service
public class RunningServiceImpl implements RunningService {

    @Autowired
    private UserRepo userRepo;

    @Autowired
    private RunningRepo runningRepo;

    @Autowired
    private RunningManRepo runningManRepo;


    @Override
    public RunningMan addRunner(String name) {

        try {
            RunningMan runner = new RunningMan();
            runner.setName(name);
            RunningMan tmp = runningManRepo.save(runner);
            if (tmp != null) {
                return tmp;
            } else {
                return null;
            }
        } catch (Exception e) {
            return null;
        }
    }

    @Override
    public Running logRunner(String uid, String rmid, String location) {
        try {
            Running running = new Running();
            running.setUser(userRepo.findOne(uid));
            running.setRunner(runningManRepo.findOne(rmid));
            running.setLocation(location);
            running.setDate(new Date());
            Running tmp = runningRepo.save(running);
            if (tmp != null) {
                tmp.setUsid(tmp.getUser().getTelephone() + " : " + tmp.getUser().getId());
                tmp.setRmid(tmp.getRunner().getId() + " : " + tmp.getRunner().getName());
                return tmp;
            } else {
                return null;
            }
        } catch (Exception e) {
            return null;
        }
    }

    @Override
    public List<Running> reportLoger(String uid) {
        User user = userRepo.findOne(uid);
        List<Running> tmp = runningRepo.findByUserOrderByDateDesc(user);
        for(Running ele : tmp) {
            ele.setUsid(ele.getUser().getTelephone() + " : " + ele.getUser().getId());
            ele.setRmid(ele.getRunner().getId() + " : " + ele.getRunner().getName());
        }
        return tmp;
    }

    @Override
    public List<Running> reportRunner(String rmid) {
        RunningMan runner = runningManRepo.findOne(rmid);
        List<Running> tmp = runningRepo.findByRunnerOrderByDateDesc(runner);
        for(Running ele : tmp) {
            ele.setUsid(ele.getUser().getTelephone() + " : " + ele.getUser().getId());
            ele.setRmid(ele.getRunner().getId() + " : " + ele.getRunner().getName());
        }
        return tmp;
    }

    @Override
    public List<RunningMan> searchRunner(String name) {
        return runningManRepo.findByName(name);
    }

    @Override
    public List<Running> reportALL() {
        List<Running> tmp =  runningRepo.findAll();
        for(Running ele : tmp) {
            ele.setUsid(ele.getUser().getTelephone() + " : " + ele.getUser().getId());
            ele.setRmid(ele.getRunner().getId() + " : " + ele.getRunner().getName());
        }
        return tmp;
    }
}
