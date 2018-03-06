package uow.csse.tv.gympe.service;

import uow.csse.tv.gympe.model.Activity;
import uow.csse.tv.gympe.model.Club;
import uow.csse.tv.gympe.model.User;
import uow.csse.tv.gympe.model.Venue;

import java.util.List;

/**
 * Search Service Interface
 *
 * @author 	Tab Tu
 * @date	2018-02-23
 * @update  Tab Tu on Mar.05 2018
 * @since	1.0
 *
 */

public interface SearchService {

    List<User> searchUser(String name, int page);

    List<User> searchCoach(String name, int page);

    List<User> searchAthlete(String name, int page);

    List<User> searchReferee(String name, int page);

    List<Venue> searchVenue(String name, int page);

    List<Club> searchClub(String name, int page);

    List<Club> searchSchool(String name, int page);

    List<Activity> searchActivity(String name, int page);
}
