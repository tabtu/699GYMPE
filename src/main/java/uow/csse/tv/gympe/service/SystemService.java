package uow.csse.tv.gympe.service;

import uow.csse.tv.gympe.model.Category;
import uow.csse.tv.gympe.model.City;
import uow.csse.tv.gympe.model.District;
import uow.csse.tv.gympe.model.Sport;

import java.util.List;

/**
 * System Service Implement
 *
 * @author 	Tab Tu
 * @date	2018-01-30
 * @update  Tab Tu on Feb.03 2018
 * @since	1.0
 *
 */

public interface SystemService {
    List<Sport> getSportList();

    City getCity(int city_id);

    List<City> getCityList();

    Category getCategory(int category_id);

    District getDistrict(int district_id);

    List<District> getDistrictListByCity(int city_id);
}
