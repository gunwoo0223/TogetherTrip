package trip.place.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import trip.place.dto.GoodDto;
import trip.place.dto.PageDto;
import trip.place.dto.PlaceDto;
import trip.place.dto.PlaceImgDto;

public class PlaceDaoImp implements PlaceDao{

	private SqlSessionTemplate sqlSession;
	
	public PlaceDaoImp() {}
	

	public SqlSessionTemplate getSqlSession() {
		return sqlSession;
	}

	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}


	@Override
	public List<PlaceDto> listMethod(PageDto pv) {
		return sqlSession.selectList("place.list", pv);
	}

	@Override
	public int countMethod() {
		return sqlSession.selectOne("place.placeCnt");
	}


	@Override
	public List<PlaceDto> detailMethod(int p_num) {
		return sqlSession.selectList("place.list2",p_num);
	}
	
	@Override
	public String mapMethod(int p_num){
		return sqlSession.selectOne("place.map",p_num);
	}

	@Override
	public void readcountMethod(int p_num) {
		sqlSession.update("place.readcount",p_num);
	}

	@Override
	public void insertGoodMethod(GoodDto gdto) {
		sqlSession.insert("place.insertGood",gdto);
	}

	@Override
	public Integer selectGoodMethod(GoodDto gdto) {
		return sqlSession.selectOne("place.selectGoodCount", gdto);
	}
	
	@Override
	public int checkGood(GoodDto gdto) {
		return sqlSession.selectOne("place.checkGood", gdto);
	}
}

