package trip.main.service;

import java.util.List;

import trip.festival.dto.FestivalImgDto;
import trip.main.dao.MainDao;
import trip.place.dto.PlaceImgDto;
import trip.restaurant.dto.RestaurantImgDto;
import trip.stay.dto.StayImgDto;

public class MainServiceImp implements MainService{

	private MainDao mainDao;
	
	public MainServiceImp() {}
	
	public void setMainDao(MainDao mainDao) {
		this.mainDao = mainDao;
	}

	@Override
	public List<PlaceImgDto> placeDataProcess() {
		return mainDao.placeData();
	}

	@Override
	public List<RestaurantImgDto> restaurantDataProcess() {
		return mainDao.restaurantData();
	}

	@Override
	public List<FestivalImgDto> festivalDataProcess() {
		return mainDao.festivalData();
	}

	@Override
	public List<StayImgDto> stayDataProcess() {
		return mainDao.stayData();
	}

}




