package trip.main.dao;

import java.util.List;

import trip.festival.dto.FestivalImgDto;
import trip.place.dto.PlaceImgDto;
import trip.restaurant.dto.RestaurantImgDto;
import trip.stay.dto.StayImgDto;

public interface MainDao {

	public List<PlaceImgDto> placeData();
	
	public List<RestaurantImgDto> restaurantData();
	
	public List<FestivalImgDto> festivalData();
	
	public List<StayImgDto> stayData();
}
