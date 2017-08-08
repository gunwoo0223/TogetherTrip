package trip.manager.dao;

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

public interface ManagerDao {
	
	/* place */
	public int placeCount();
	public void placeInsert(HashMap<String,Object> map);
	public List<PlaceDto> placeList(PageDto pgdto);
	public PlaceDto placeSelect(int p_num);
	public void placeUpdate(HashMap<String,Object> map);
	public void placeImgUpdate(HashMap<String,Object> map);
	public PlaceImgDto placeAllImg(int p_num);
	public void placeDel(int p_num);
	
	/* festival */
	public int festivalCount();
	public void festivalInsert(HashMap<String, Object> map);
	public List<FestivalDto> festivalList(PageDto pgdto);
	public FestivalDto festivalSelect(int f_num);
	public void festivalUpdate(HashMap<String, Object> map);
	public void festivalImgUpdate(HashMap<String, Object> map);
	public FestivalImgDto festivalAllImg(int f_num);
	public void festivalDel(int f_num);
	
	/* stay */
	public int stayCount();
	public void stayInsert(HashMap<String,Object> map);
	public List<StayDto> stayList(PageDto pgdto);

	/* restaurant */
	public int restaurantCount();
	public void restaurantInsert(HashMap<String,Object> map);
	public List<RestaurantDto> restaurantList(PageDto pgdto);
	public RestaurantDto restaurantSelect(int r_num);
	public void restaurantUpdate(HashMap<String,Object> map);
	public void restaurantImgUpdate(HashMap<String,Object> map);
	public RestaurantImgDto restaurantAllImg(int r_num);
	public void restaurantDel(int r_num);
	
	/* memberInfo */
	public int userCount();
	public List<UserDto> memberInfo(PageDto pgdto);
	
}







