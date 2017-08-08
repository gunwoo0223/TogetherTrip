package trip.restaurant.service;

import java.util.List;

import trip.restaurant.dao.RestaurantDao;
import trip.restaurant.dto.GoodDto;
import trip.restaurant.dto.PageDto;
import trip.restaurant.dto.RestaurantDto;

public class RestaurantServiceImp implements RestaurantService{

	private RestaurantDao restaurantDao;
	
	public RestaurantServiceImp() {}
	
	public void setRestaurantDao(RestaurantDao restaurantDao) {
		this.restaurantDao = restaurantDao;
	}

	@Override
	public List<RestaurantDto> listProcess(PageDto pv) {
		return restaurantDao.listMethod(pv);
	}

	@Override
	public int cntProcess() {
		return restaurantDao.countMethod();
	}

	@Override
	public List<RestaurantDto> detailProcess(int r_num) {
		restaurantDao.readMethod(r_num);
		return restaurantDao.detailMethod(r_num);
	}

	@Override
	public String mapProcess(int r_num) {
		return restaurantDao.mapMethod(r_num);
	}
	
	@Override
	public int insertGoodProcess(GoodDto gdto) {
		restaurantDao.insertGoodMethod(gdto);
		return restaurantDao.selectGoodMethod(gdto);
	}

	@Override
	public Integer selectGoodProcess(GoodDto gdto) {
		return restaurantDao.selectGoodMethod(gdto);
	}

	@Override
	public int checkGoodProcess(GoodDto gdto) {
		return restaurantDao.checkGood(gdto);
	}
	
}
