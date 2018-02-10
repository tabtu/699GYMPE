package uow.csse.tv.gympe.service;

import uow.csse.tv.gympe.model.Category;
import uow.csse.tv.gympe.model.City;
import uow.csse.tv.gympe.model.District;

/**
 * Login Service Implement
 *
 * @author 	Tab Tu
 * @date	2018-01-30
 * @update  Tab Tu on Feb.03 2018
 * @since	1.0
 *
 */

public interface SystService {
    City findCity(int city_id);

    Category findCategory(int category_id);

    District findDistrict(int district_id);
}
