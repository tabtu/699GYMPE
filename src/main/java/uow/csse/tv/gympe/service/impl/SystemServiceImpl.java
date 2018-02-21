package uow.csse.tv.gympe.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import uow.csse.tv.gympe.model.Category;
import uow.csse.tv.gympe.model.City;
import uow.csse.tv.gympe.model.District;
import uow.csse.tv.gympe.model.Sport;
import uow.csse.tv.gympe.repository.CategoryRepo;
import uow.csse.tv.gympe.repository.CityRepo;
import uow.csse.tv.gympe.repository.DistrictRepo;
import uow.csse.tv.gympe.repository.SportRepo;
import uow.csse.tv.gympe.service.SystemService;

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

@Service
public class SystemServiceImpl implements SystemService {

    @Autowired
    private SportRepo sportRepo;

    @Autowired
    private CityRepo cityRepo;

    @Autowired
    private CategoryRepo categoryRepo;

    @Autowired
    private DistrictRepo districtRepo;

    @Override
    public List<Sport> getSportList() {
        return sportRepo.findAllByOrderBySortAsc();
    }

    @Override
    public City getCity(int city_id) {
        return cityRepo.findOne(city_id);
    }

    @Override
    public List<City> getCityList() {
        return cityRepo.findAll();
    }

    @Override
    public Category getCategory(int category_id) {
        return categoryRepo.findOne(category_id);
    }

    @Override
    public District getDistrict(int district_id) {
        return districtRepo.findOne(district_id);
    }

    @Override
    public List<District> getDistrictListByCity(int city_id) {
        return districtRepo.findDistinctByCity_IdOrderBySortAsc(city_id);
    }

}