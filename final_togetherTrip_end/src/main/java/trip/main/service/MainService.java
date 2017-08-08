package trip.main.service;

import java.util.List;

import trip.festival.dto.FestivalImgDto;
import trip.place.dto.PlaceImgDto;
import trip.restaurant.dto.RestaurantImgDto;
import trip.stay.dto.StayImgDto;

public interface MainService {

    public List<PlaceImgDto> placeDataProcess();
	
	public List<RestaurantImgDto> restaurantDataProcess();
	
	public List<FestivalImgDto> festivalDataProcess();
	
	public List<StayImgDto> stayDataProcess();
}
