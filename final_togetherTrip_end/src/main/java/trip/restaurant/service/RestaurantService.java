package trip.restaurant.service;

import java.util.List;

import trip.restaurant.dto.GoodDto;
import trip.restaurant.dto.PageDto;
import trip.restaurant.dto.RestaurantDto;

public interface RestaurantService {
	public List<RestaurantDto> listProcess(PageDto pv);
	public int cntProcess();
	public List<RestaurantDto> detailProcess(int r_num);
	public String mapProcess(int r_num);

	public int insertGoodProcess(GoodDto gdto);
	public Integer selectGoodProcess(GoodDto gdto);
	
	public int checkGoodProcess(GoodDto gdto);
}
