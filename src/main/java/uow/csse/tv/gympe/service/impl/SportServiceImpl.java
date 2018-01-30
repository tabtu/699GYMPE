package uow.csse.tv.gympe.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import uow.csse.tv.gympe.model.Sport;
import uow.csse.tv.gympe.model.User;
import uow.csse.tv.gympe.repository.SportRepo;
import uow.csse.tv.gympe.service.SportService;

import java.util.List;

@Service
public class SportServiceImpl implements SportService {
    @Autowired
    private SportRepo sportRepo;

    @Override
    public List<Sport> findSportAll() {
        return sportRepo.findAll();
    }
}
