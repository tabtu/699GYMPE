package uow.csse.tv.gympe.service;

import uow.csse.tv.gympe.model.*;

import java.sql.Ref;

/**
 * Login Service Implement
 *
 * @author 	Tab Tu
 * @date	2018-01-30
 * @update  Tab Tu on Feb.03 2018
 * @since	1.0
 *
 */

public interface AdminService {
    void saveCategory(Category category);

    void saveCity(City city);

    void saveDistrict(District district);

    void saveSport(Sport sport);

    void saveClub(Club club);

    void saveVenue(Venue venue);

    void saveQualification(Qualification qualification);

    void saveNews(News news);

}