package trip.allSearch.service;

import java.util.HashMap;
import java.util.List;

import trip.allSearch.dto.AllSearchDto;
import trip.allSearch.dto.PageDTO;
import trip.festival.dto.FestivalDto;
import trip.place.dto.PlaceDto;
import trip.restaurant.dto.RestaurantDto;
import trip.stay.dto.StayDto;

public interface AllSearchService {
	public List<AllSearchDto> reusltAllProcess(String stateName);
	
	public List<AllSearchDto> resultProcess(String cityName);

	public int countProcess(HashMap<String, Object> map);
	
	public int allCountProcess(String locName);

	public List<AllSearchDto> allListProcess(HashMap<String, Object> map);
	
	public List<AllSearchDto> allStateProcess(HashMap<String, Object> map);
	
	public List<AllSearchDto> cityListProcess(HashMap<String, Object> map);
	
	public List<AllSearchDto> cityAllListProcess(HashMap<String, Object> map);
	
	public List<StayDto> stayListProcess(PageDTO pv);

	public List<RestaurantDto> restaurantListProcess(PageDTO pv);

	public List<PlaceDto> placeListProcess(PageDTO pv);

	public List<FestivalDto> festivalListProcess(PageDTO pv);
}
