package trip.manager.service;

import java.util.HashMap;
import java.util.List;

import trip.festival.dto.FestivalDto;
import trip.festival.dto.FestivalImgDto;
import trip.place.dto.PlaceDto;
import trip.place.dto.PlaceImgDto;
import trip.restaurant.dto.RestaurantDto;
import trip.restaurant.dto.RestaurantImgDto;
import trip.stay.dto.StayDto;
import trip.user.dto.PageDto;
import trip.user.dto.UserDto;

public interface ManagerService {
	
	/* place */
	public int placeCountProcess();
	public List<PlaceDto> placeList(PageDto pgdto);
	public void placeInsertProcess(HashMap<String,Object> map);
	public PlaceDto placeSelect(int p_num);
	public void placeUpdateProcess(HashMap<String,Object> map);
	public PlaceImgDto placeImg(int p_num);
	public void placeDel(int p_num);
	
	/* festival */
	public int festivalCountProcess();
	public List<FestivalDto> festivalList(PageDto pgdto);
	public void festivalInsertProcess(HashMap<String, Object> map);
	public FestivalDto festivalSelect(int f_num);
	public void festivalUpdateProcess(HashMap<String,Object> map);
	public FestivalImgDto festivalImg(int f_num);
	public void festivalDel(int f_num);

	/* stay */
	public int stayCountProcess();
	public List<StayDto> stayList(PageDto pgdto);
	public void stayInsertProcess(HashMap<String,Object> map);
	
	/* restaurant */
	public int restaurantCountProcess();
	public List<RestaurantDto> restaurantList(PageDto pgdto);
	public void restaurantInsertProcess(HashMap<String, Object> map);
	public RestaurantDto restaurantSelect(int r_num);
	public void restaurantUpdateProcess(HashMap<String,Object> map);
	public RestaurantImgDto restaurantImg(int r_num);
	public void restaurantDel(int r_num);
	
	/* memberInfo */
	public int userCountProcess();
	public List<UserDto> memberInfoProcess(PageDto pgdto);
}










