package trip.manager.service;

import java.util.HashMap;
import java.util.List;

import trip.festival.dto.FestivalDto;
import trip.festival.dto.FestivalImgDto;
import trip.manager.dao.ManagerDaoImp;
import trip.place.dto.PlaceDto;
import trip.place.dto.PlaceImgDto;
import trip.restaurant.dto.RestaurantDto;
import trip.restaurant.dto.RestaurantImgDto;
import trip.stay.dto.StayDto;
import trip.user.dto.PageDto;
import trip.user.dto.UserDto;

public class ManagerServiceImp implements ManagerService {
	private ManagerDaoImp managerDao;
	
	public ManagerServiceImp(){}
	
	public void setManagerDao(ManagerDaoImp managerDao) {
		this.managerDao = managerDao;
	}
	
	/* place */
	@Override
	public int placeCountProcess() {
		return managerDao.placeCount();
	}
	@Override
	public List<PlaceDto> placeList(PageDto pgdto) {
		return managerDao.placeList(pgdto);
	}
	@Override
	public void placeInsertProcess(HashMap<String,Object> map) {
		managerDao.placeInsert(map);
	}
	@Override
	public PlaceDto placeSelect(int p_num) {
		return managerDao.placeSelect(p_num);
	}
	@Override
	public void placeUpdateProcess(HashMap<String, Object> map) {
		managerDao.placeUpdate(map);
		managerDao.placeImgUpdate(map);
	}
	/* 이미지업데이트할 때 기존의 파일명을 가져오기 위해 사용 */
	@Override
	public PlaceImgDto placeImg(int p_num) {
		return managerDao.placeAllImg(p_num);
	}
	@Override
	public void placeDel(int p_num) {
		managerDao.placeDel(p_num);
	}
	
	/* festival */
	@Override
	public int festivalCountProcess() {
		return managerDao.festivalCount();
	}
	@Override
	public List<FestivalDto> festivalList(PageDto pgdto) {
		return managerDao.festivalList(pgdto);
	}
	@Override
	public void festivalInsertProcess(HashMap<String, Object> map) {
		managerDao.festivalInsert(map);
	}
	@Override
	public FestivalDto festivalSelect(int f_num) {
		return managerDao.festivalSelect(f_num);
	}
	@Override
	public void festivalUpdateProcess(HashMap<String, Object> map) {
		managerDao.festivalUpdate(map);
		managerDao.festivalImgUpdate(map);
	}
	@Override
	public FestivalImgDto festivalImg(int f_num) {
		return managerDao.festivalAllImg(f_num);
	}
	@Override
	public void festivalDel(int f_num) {
		managerDao.festivalDel(f_num);
	}

	/* stay */
	@Override
	public int stayCountProcess() {
		return managerDao.stayCount();
	}
	@Override
	public List<StayDto> stayList(PageDto pgdto) {
		return managerDao.stayList(pgdto);
	}
	@Override
	public void stayInsertProcess(HashMap<String,Object> map) {
		managerDao.stayInsert(map);
	}

	/* restaurant */
	@Override
	public int restaurantCountProcess() {
		return managerDao.restaurantCount();
	}
	@Override
	public List<RestaurantDto> restaurantList(PageDto pgdto) {
		return managerDao.restaurantList(pgdto);
	}
	@Override
	public void restaurantInsertProcess(HashMap<String,Object> map) {
		managerDao.restaurantInsert(map);
	}
	@Override
	public RestaurantDto restaurantSelect(int r_num) {
		return managerDao.restaurantSelect(r_num);
	}
	@Override
	public void restaurantUpdateProcess(HashMap<String, Object> map) {
		managerDao.restaurantUpdate(map);
		managerDao.restaurantImgUpdate(map);
	}
	/* 이미지업데이트할 때 기존의 파일명을 가져오기 위해 사용 */
	@Override
	public RestaurantImgDto restaurantImg(int r_num) {
		return managerDao.restaurantAllImg(r_num);
	}
	@Override
	public void restaurantDel(int r_num) {
		managerDao.restaurantDel(r_num);
	}

	@Override
	public int userCountProcess() {
		return managerDao.userCount();
	}
	@Override
	public List<UserDto> memberInfoProcess(PageDto pgdto) {
		return managerDao.memberInfo(pgdto);
	}

}
