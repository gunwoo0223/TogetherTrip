package trip.manager.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import trip.festival.dto.FestivalDto;
import trip.festival.dto.FestivalImgDto;
import trip.place.dto.PlaceDto;
import trip.place.dto.PlaceImgDto;
import trip.restaurant.dto.RestaurantDto;
import trip.restaurant.dto.RestaurantImgDto;
import trip.stay.dto.StayDto;
import trip.user.dto.PageDto;
import trip.user.dto.UserDto;

public class ManagerDaoImp implements ManagerDao{
	private SqlSession sqlSession;
	
	public ManagerDaoImp(){}
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	/* place */
	@Override
	public int placeCount() {
		return sqlSession.selectOne("manager.placeCount");
	}
	@Override
	public void placeInsert(HashMap<String,Object> map) {
		sqlSession.insert("manager.placeInsert",map);
	}
	@Override
	public PlaceDto placeSelect(int p_num) {
		return sqlSession.selectOne("manager.placeSelect",p_num);
	}
	@Override
	public List<PlaceDto> placeList(PageDto pgdto) {
		return sqlSession.selectList("manager.placeList", pgdto);
	}
	@Override
	public void placeUpdate(HashMap<String, Object> map) {
		sqlSession.update("manager.placeUpdate",map);
	}
	@Override
	public void placeImgUpdate(HashMap<String, Object> map) {
		sqlSession.update("manager.placeImgUpdate",map);
	}
	@Override
	public PlaceImgDto placeAllImg(int p_num) {
		return sqlSession.selectOne("manager.placeAllImg",p_num);
	}
	@Override
	public void placeDel(int p_num) {
		sqlSession.delete("manager.placeDel",p_num);
	}

	/* festival */
	@Override
	public int festivalCount() {
		return sqlSession.selectOne("manager.festivalCount");
	}
	@Override
	public void festivalInsert(HashMap<String, Object> map) {
		sqlSession.insert("manager.festivalInsert", map);
	}
	@Override
	public List<FestivalDto> festivalList(PageDto pgdto) {
		return sqlSession.selectList("manager.festivalList", pgdto);
	}
	@Override
	public FestivalDto festivalSelect(int f_num) {
		return sqlSession.selectOne("manager.festivalSelect",f_num);
	}
	@Override
	public void festivalUpdate(HashMap<String, Object> map) {
		sqlSession.update("manager.festivalUpdate",map);
	}
	@Override
	public void festivalImgUpdate(HashMap<String, Object> map) {
		sqlSession.update("manager.festivalImgUpdate",map);
	}
	@Override
	public FestivalImgDto festivalAllImg(int f_num) {
		return sqlSession.selectOne("manager.festivalAllImg",f_num);
	}
	@Override
	public void festivalDel(int f_num) {
		sqlSession.delete("manager.festivalDel",f_num);
	}

	/* stay */
	@Override
	public int stayCount() {
		return sqlSession.selectOne("manager.stayCount");
	}
	@Override
	public void stayInsert(HashMap<String,Object> map) {
		sqlSession.insert("manager.stayInsert",map);
	}
	@Override
	public List<StayDto> stayList(PageDto pgdto) {
		return sqlSession.selectList("manager.stayList", pgdto);
	}

	/* restaurant */
	@Override
	public int restaurantCount() {
		return sqlSession.selectOne("manager.restaurantCount");
	}
	@Override
	public void restaurantInsert(HashMap<String,Object> map) {
		sqlSession.insert("manager.restaurantInsert", map);
	}
	@Override
	public RestaurantDto restaurantSelect(int r_num) {
		return sqlSession.selectOne("manager.restaurantSelect", r_num);
	}
	@Override
	public List<RestaurantDto> restaurantList(PageDto pgdto) {
		return sqlSession.selectList("manager.restaurantList", pgdto);
	}
	@Override
	public void restaurantUpdate(HashMap<String, Object> map) {
		sqlSession.update("manager.restaurantUpdate", map);
	}
	@Override
	public void restaurantImgUpdate(HashMap<String, Object> map) {
		sqlSession.update("manager.restaurantImgUpdate",map);
	}
	@Override
	public RestaurantImgDto restaurantAllImg(int r_num) {
		return sqlSession.selectOne("manager.restaurantAllImg",r_num);
	}
	@Override
	public void restaurantDel(int r_num) {
		sqlSession.delete("manager.restaurantDel",r_num);
	}

	@Override
	public int userCount() {
		return sqlSession.selectOne("manager.userCount");
	}
	@Override
	public List<UserDto> memberInfo(PageDto pgdto) {
		return sqlSession.selectList("manager.memberInfo", pgdto);
	}

}
