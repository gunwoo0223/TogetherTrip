package trip.allSearch.service;

import java.util.HashMap;
import java.util.List;

import trip.allSearch.dao.AllSearchDao;
import trip.allSearch.dto.AllSearchDto;
import trip.allSearch.dto.PageDTO;
import trip.festival.dto.FestivalDto;
import trip.place.dto.PlaceDto;
import trip.restaurant.dto.RestaurantDto;
import trip.stay.dto.StayDto;

public class AllSearchServiceImp implements AllSearchService {

	private AllSearchDao allSearchDao;

	public AllSearchServiceImp() {
	}

	public void setAllSearchDao(AllSearchDao allSearchDao) {
		this.allSearchDao = allSearchDao;
	}

	@Override
	public List<AllSearchDto> reusltAllProcess(String locName) {
		return allSearchDao.allResult(locName);
	}

	@Override
	public List<AllSearchDto> resultProcess(String cityName) {
		return allSearchDao.result(cityName);
	}

	@Override
	public int countProcess(HashMap<String, Object> map) {
		return allSearchDao.count(map);
	}
	
	@Override
	public int allCountProcess(String stateName) {
		return allSearchDao.allCount(stateName);
	}

	@Override
	public List<StayDto> stayListProcess(PageDTO pv) {
		return allSearchDao.stayList(pv);
	}

	@Override
	public List<RestaurantDto> restaurantListProcess(PageDTO pv) {
		return allSearchDao.restaurantList(pv);
	}

	@Override
	public List<PlaceDto> placeListProcess(PageDTO pv) {
		return allSearchDao.placeList(pv);
	}

	@Override
	public List<FestivalDto> festivalListProcess(PageDTO pv) {
		return allSearchDao.festivalList(pv);
	}

	@Override
	public List<AllSearchDto> allListProcess(HashMap<String, Object> map) {
		return allSearchDao.allList(map);
	}

	@Override
	public List<AllSearchDto> cityListProcess(HashMap<String, Object> map) {
		return allSearchDao.cityList(map);
	}

	@Override
	public List<AllSearchDto> cityAllListProcess(HashMap<String, Object> map) {
		return allSearchDao.cityAllList(map);
	}

	@Override
	public List<AllSearchDto> allStateProcess(HashMap<String, Object> map) {
		return allSearchDao.allStateList(map);
	}
}
