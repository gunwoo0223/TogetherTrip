package trip.allSearch.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import trip.allSearch.dto.AllSearchDto;
import trip.allSearch.dto.PageDTO;
import trip.festival.dto.FestivalDto;
import trip.place.dto.PlaceDto;
import trip.restaurant.dto.RestaurantDto;
import trip.stay.dto.StayDto;

public class AllSearchDaoImp implements AllSearchDao {

	private SqlSessionTemplate sqlSession;

	public AllSearchDaoImp() {
	}

	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<AllSearchDto> allResult(String stateName) {
		return sqlSession.selectList("allSearch.getAllArea", stateName);
	}

	@Override
	public List<AllSearchDto> result(String cityName) {
		return sqlSession.selectList("allSearch.getArea", cityName);
	}

	@Override
	public int count(HashMap<String, Object> map) {
		return sqlSession.selectOne("allSearch.getCount", map);
	}
	
	@Override
	public int allCount(String locName) {
		return sqlSession.selectOne("allSearch.getAllCount", locName);
	}

	@Override
	public List<StayDto> stayList(PageDTO pv) {
		return sqlSession.selectList("allSearch.getStayList", pv);
	}

	@Override
	public List<RestaurantDto> restaurantList(PageDTO pv) {
		return sqlSession.selectList("allSearch.getRestaurantList", pv);
	}

	@Override
	public List<PlaceDto> placeList(PageDTO pv) {
		return sqlSession.selectList("allSearch.getPlaceList", pv);
	}

	@Override
	public List<FestivalDto> festivalList(PageDTO pv) {
		return sqlSession.selectList("allSearch.getFestivalList", pv);
	}

	@Override
	public List<AllSearchDto> allList(HashMap<String, Object> map) {
		return sqlSession.selectList("allSearch.getAllList", map);
	}
	
	@Override
	public List<AllSearchDto> cityList(HashMap<String, Object> map) {
		return sqlSession.selectList("allSearch.getCityList", map);
	}

	@Override
	public List<AllSearchDto> cityAllList(HashMap<String, Object> map) {
		return sqlSession.selectList("allSearch.getAllCityList", map);
	}

	@Override
	public List<AllSearchDto> allStateList(HashMap<String, Object> map) {
		return sqlSession.selectList("allSearch.getAllStateList", map);
	}
}
