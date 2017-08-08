package trip.allSearch.dao;

import java.util.HashMap;
import java.util.List;

import trip.allSearch.dto.AllSearchDto;
import trip.allSearch.dto.PageDTO;
import trip.festival.dto.FestivalDto;
import trip.place.dto.PlaceDto;
import trip.restaurant.dto.RestaurantDto;
import trip.stay.dto.StayDto;

public interface AllSearchDao {
	public List<AllSearchDto> result(String cityName);
	
	public List<AllSearchDto> allResult(String stateName);

	public int count(HashMap<String, Object> map);
	
	public int allCount(String locName);
	
	public List<AllSearchDto> allList(HashMap<String, Object> map);
	
	public List<AllSearchDto> allStateList(HashMap<String, Object> map);
	
	public List<AllSearchDto> cityList(HashMap<String, Object> map);
	
	public List<AllSearchDto> cityAllList(HashMap<String, Object> map);

	
	public List<StayDto> stayList(PageDTO pv);

	public List<RestaurantDto> restaurantList(PageDTO pv);

	public List<PlaceDto> placeList(PageDTO pv);

	public List<FestivalDto> festivalList(PageDTO pv);
}
