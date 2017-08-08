package trip.user.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import trip.review.dto.ReviewDto;
import trip.user.dto.InterestedFestivalDto;
import trip.user.dto.InterestedPlaceDto;
import trip.user.dto.InterestedRestaurantDto;
import trip.user.dto.InterestedStayDto;
import trip.user.dto.ManagerDto;
import trip.user.dto.UserDto;

public class UserDaoImp implements UserDao{

	private SqlSessionTemplate sqlSession;
	
	public UserDaoImp() {}
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public void joinProcess(UserDto udto) {
		sqlSession.insert("user.join", udto);
	}

	@Override
	public int idCheck(String uId) {
		return sqlSession.selectOne("user.idChk", uId);
	}

	@Override
	public String userLoginProcess(UserDto udto) {
		return sqlSession.selectOne("user.userLogin", udto);
	}

	@Override
	public String managerLoginProcess(ManagerDto mdto) {
		return sqlSession.selectOne("user.managerLogin", mdto);
	}

	@Override
	public UserDto userInfo(String sessionUId) {
		return sqlSession.selectOne("user.userInfo", sessionUId);
	}

	@Override
	public void updateUserInfo(UserDto udto) {
		sqlSession.update("user.updateUserInfo", udto);
	}

	@Override
	public int userChk(UserDto udto) {
		return sqlSession.selectOne("user.userChk", udto);
	}
	
	@Override
	public void withdrawProcess(UserDto udto) {
		sqlSession.update("user.withdraw", udto);
	}

	@Override
	public int userReviewCount(String uId) {
		return sqlSession.selectOne("user.userReviewCount", uId);
	}

	@Override
	public List<ReviewDto> userReviewInfo(HashMap<String, Object> map) {
		return sqlSession.selectList("user.userReviewInfo", map);
	}
	
	@Override
	public int interestedPlaceCount(String uId) {
		return sqlSession.selectOne("user.interestedPlaceCount", uId);
	}

	@Override
	public List<InterestedPlaceDto> interestedPlace(HashMap<String, Object> map) {
		return sqlSession.selectList("user.interestedPlace", map);
	}
	
	@Override
	public int interestedRestaurantCount(String uId) {
		return sqlSession.selectOne("user.interestedRestaurantCount", uId);
	}

	@Override
	public List<InterestedRestaurantDto> interestedRestaurant(HashMap<String, Object> map) {
		return sqlSession.selectList("user.interestedRestaurant", map);
	}
	
	@Override
	public int interestedFestivalCount(String uId) {
		return sqlSession.selectOne("user.interestedFestivalCount", uId);
	}

	@Override
	public List<InterestedFestivalDto> interestedFestival(HashMap<String, Object> map) {
		return sqlSession.selectList("user.interestedFestival", map);
	}

	@Override
	public int interestedStayCount(String uId) {
		return sqlSession.selectOne("user.interestedStayCount", uId);
	}

	@Override
	public List<InterestedStayDto> interestedStay(HashMap<String, Object> map) {
		return sqlSession.selectList("user.interestedStay", map);
	}
	
}






