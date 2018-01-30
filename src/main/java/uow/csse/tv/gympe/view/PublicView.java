package uow.csse.tv.gympe.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import uow.csse.tv.gympe.model.Sport;
import uow.csse.tv.gympe.service.SportService;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
public class PublicView {
    @Autowired
    private SportService sportServ;

    @RequestMapping(value = "/getsportlist", method = RequestMethod.GET)
    public List<Sport> getSportlist(HttpServletRequest request) {
        return sportServ.findSportAll();
    }
}
