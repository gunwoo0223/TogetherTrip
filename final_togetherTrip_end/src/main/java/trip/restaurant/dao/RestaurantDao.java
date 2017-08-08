package trip.restaurant.dao;

import java.util.List;

import trip.restaurant.dto.GoodDto;
import trip.restaurant.dto.PageDto;
import trip.restaurant.dto.RestaurantDto;

public interface RestaurantDao {
	public List<RestaurantDto> listMethod(PageDto pv);
	public int countMethod();
	public List<RestaurantDto> detailMethod(int r_num);
	public String mapMethod(int r_num);
	public void readMethod(int r_num);
	
	public void insertGoodMethod(GoodDto gdto);
	public Integer selectGoodMethod(GoodDto gdto);
	
	public int checkGood(GoodDto gdto);
	
}
