package uow.csse.tv.gympe.service;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import uow.csse.tv.gympe.model.Sport;
import uow.csse.tv.gympe.model.User;

import java.util.List;

public interface SportService {
    List<Sport> findSportAll();
}