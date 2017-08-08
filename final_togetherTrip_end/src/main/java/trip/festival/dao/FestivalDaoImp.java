package trip.festival.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import trip.festival.dto.FestivalDto;
import trip.festival.dto.FestivalImgDto;
import trip.festival.dto.GoodDto;
import trip.festival.dto.PageDto;

public class FestivalDaoImp implements FestivalDao{

	private SqlSessionTemplate sqlSession;
	
	public FestivalDaoImp() {}
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<FestivalDto> list(PageDto pv) {
		return sqlSession.selectList("festival.list",pv);
	}

	@Override
	public int count() {
		return sqlSession.selectOne("festival.count");
	}

	@Override
	public FestivalDto content(int f_num) {
		return sqlSession.selectOne("festival.content",f_num);
	}
	
	@Override
	public void updateReadCount(int f_num) {
		sqlSession.update("festival.readCount", f_num);
	}
	
	@Override
	public FestivalImgDto imgList(int f_num) {
		return sqlSession.selectOne("festival.img", f_num);
	}

	@Override
	public String mapMethod(int f_num) {
		return sqlSession.selectOne("festival.map",f_num);
	}

	@Override
	public void increaseFestivalGood(GoodDto gdto) {
		sqlSession.insert("festival.increaseFestivalGood", gdto);
	}

	@Override
	public int goodCheck(GoodDto gdto) {
		return sqlSession.selectOne("festival.goodCheck", gdto);
	}

	@Override
	public Integer goodCount(GoodDto gdto) {
		return sqlSession.selectOne("festival.goodCount", gdto);
	}

}
