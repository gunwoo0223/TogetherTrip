package trip.stay.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import trip.stay.dto.PageDto;
import trip.stay.dto.ReserveDto;
import trip.stay.dto.StayDto;
import trip.stay.dto.StayImgDto;

public class StayDaoImp implements StayDao{

	private SqlSessionTemplate sqlSession;
	
	public StayDaoImp() {}
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public int countMethod() {
		return sqlSession.selectOne("stay.count");
	}

	@Override
	public List<StayDto> listMethod(PageDto pv) {
		return sqlSession.selectList("stay.list", pv);
	}

	@Override
	public StayDto stayInfoMethod(int s_num) {
		return sqlSession.selectOne("stay.stayInfo", s_num);
	}
	
	@Override
	public StayImgDto stayImgInfoMethod(int s_num) {
		return sqlSession.selectOne("stay.stayImgInfo", s_num);
	}

	@Override
	public List<StayDto> stayInfo2Method(int s_num) {
		return sqlSession.selectList("stay.stayInfo", s_num);
	}

	@Override
	public StayDto hotelInfoMethod(int s_num) {
		return sqlSession.selectOne("stay.hotel", s_num);
	}

	@Override
	public int stay_cntMethod() {
		return sqlSession.selectOne("stay.stay_cnt");
	}

	@Override
	public void readCountMethod(int s_num) {
		sqlSession.update("stay.readCount", s_num);
	}

	@Override
	public int lastRecordMethod() {
		return sqlSession.selectOne("stay.lastRecord");
	}

	@Override
	public void reserveMethod(ReserveDto dto) {
		sqlSession.insert("stay.reserve", dto);
	}

	@Override
	public String mapMethod(int s_num) {
		return sqlSession.selectOne("stay.map",s_num);
	}

	@Override
	public StayDto motelInfoMethod(int s_num) {
		return sqlSession.selectOne("stay.motel", s_num);
	}

	@Override
	public StayDto pensionInfoMethod(int s_num) {
		return sqlSession.selectOne("stay.pension", s_num);
	}

}//end class
