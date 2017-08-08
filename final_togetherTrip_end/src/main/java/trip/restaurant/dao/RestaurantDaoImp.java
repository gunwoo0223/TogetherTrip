package trip.restaurant.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import trip.restaurant.dto.GoodDto;
import trip.restaurant.dto.PageDto;
import trip.restaurant.dto.RestaurantDto;

public class RestaurantDaoImp implements RestaurantDao{

	private SqlSessionTemplate sqlSession;
	
	public RestaurantDaoImp() {}
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<RestaurantDto> listMethod(PageDto pv) {
		return sqlSession.selectList("restaurant.list",pv);
	}

	@Override
	public int countMethod() {
		return sqlSession.selectOne("restaurant.resCnt");
	}

	@Override
	public List<RestaurantDto> detailMethod(int r_num) {
		return sqlSession.selectList("restaurant.list2",r_num);
	}

	@Override
	public String mapMethod(int r_num) {
		return sqlSession.selectOne("restaurant.map",r_num);
	}
	
	@Override
	public void readMethod(int r_num){
		sqlSession.update("restaurant.readcount",r_num);
	}

	@Override
	public void insertGoodMethod(GoodDto gdto) {
		sqlSession.insert("restaurant.insertGood",gdto);
	}


	@Override
	public Integer selectGoodMethod(GoodDto gdto) {
		return sqlSession.selectOne("restaurant.selectGoodCount",gdto);
	}

	@Override
	public int checkGood(GoodDto gdto) {
		return sqlSession.selectOne("restaurant.checkGood",gdto);
	}

	
}
