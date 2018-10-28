package uow.csse.tv.gympe.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import uow.csse.tv.gympe.model.Running;
import uow.csse.tv.gympe.model.RunningMan;
import uow.csse.tv.gympe.service.RunningService;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
@RequestMapping("/run")
public class RunningView {
    @Autowired
    private RunningService runningService;

    @RequestMapping(value = "/ad", method = RequestMethod.POST)
    @ResponseBody
    public RunningMan addrunner(@RequestParam("name") String name) {
        return runningService.addRunner(name);
    }

    @RequestMapping(value = "/sh", method = RequestMethod.GET)
    @ResponseBody
    public List<RunningMan> searchrunner(@RequestParam("name") String name) {
        return runningService.searchRunner(name);
    }

    @RequestMapping(value = "/lg", method = RequestMethod.POST)
    @ResponseBody
    public Running logrunner(@RequestParam("usid") String uid,
                          @RequestParam("rmid") String rmid,
                          @RequestParam("location") String location) {
        return runningService.logRunner(uid, Integer.parseInt(rmid), location);
    }

    @GetMapping(value = "/rp{rmid}")
    public List<Running> getrunnerreport(HttpServletRequest request) {
        int rmid = Integer.parseInt(request.getParameter("rmid"));
        return runningService.reportRunner(rmid);
    }
}