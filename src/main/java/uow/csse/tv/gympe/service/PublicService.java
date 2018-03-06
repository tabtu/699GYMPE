package uow.csse.tv.gympe.service;

import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import uow.csse.tv.gympe.model.*;

import java.awt.print.Pageable;
import java.util.List;

/**
 * Sport Service Interface
 *
 * @author 	Tab Tu
 * @date	2018-01-30
 * @update  Tab Tu on Feb.12 2018
 * @since	1.0
 *
 */

public interface PublicService {

    Club getClub(int id);

    List<Club> getClubList(int page);

    List<Club> getClubAndSchoolByNameLike(String name, int page);

    List<Club> getClubListByDistrictId(int id, int page);

    List<Club> getClubListByCityId(int id, int page);

    List<Club> getSchoolList(int page);

    List<Club> getSchoolListByDistrictId(int id, int page);

    List<Club> getSchoolListByCityId(int id, int page);

    Venue getVenue(int id);

    List<Venue> getVenueListByNameLike(String name, int page);

    List<Venue> getVenueListByDistrictId(int id, int page);

    List<Venue> getVenueListByCityId(int id, int page);

    List<Venue> getVenueList(int page);

    List<VNews> getVNewsListByVenueId(int venueid, int page);

    List<News> getHomeNewsList(int city_id);

    List<News> getNewsList(int city_id, int page);

    List<CNews> getCNewsListByClubId(int clubid, int page);
}