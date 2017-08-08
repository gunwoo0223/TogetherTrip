package trip.main.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import trip.festival.dto.FestivalImgDto;
import trip.place.dto.PlaceImgDto;
import trip.restaurant.dto.RestaurantImgDto;
import trip.stay.dto.StayImgDto;

public class MainDaoImp implements MainDao{

	private SqlSessionTemplate sqlSession;
	
	public MainDaoImp() {}
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<PlaceImgDto> placeData() {
		return sqlSession.selectList("main.placeData");
	}

	@Override
	public List<RestaurantImgDto> restaurantData() {
		return sqlSession.selectList("main.restaurantData");
	}

	@Override
	public List<FestivalImgDto> festivalData() {
		return sqlSession.selectList("main.festivalData");
	}

	@Override
	public List<StayImgDto> stayData() {
		return sqlSession.selectList("main.stayData");
	}
}
