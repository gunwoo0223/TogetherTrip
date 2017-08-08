package trip.user.service;

import java.util.HashMap;
import java.util.List;

import trip.review.dto.ReviewDto;
import trip.user.dao.UserDao;
import trip.user.dto.InterestedFestivalDto;
import trip.user.dto.InterestedPlaceDto;
import trip.user.dto.InterestedRestaurantDto;
import trip.user.dto.InterestedStayDto;
import trip.user.dto.ManagerDto;
import trip.user.dto.UserDto;

public class UserServiceImp implements UserService{

	private UserDao userDao;
	
	public UserServiceImp() {}
	
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public void joinProcess(UserDto udto) {
		userDao.joinProcess(udto);
	}

	@Override
	public int idCheckProcess(String uId) {
		return userDao.idCheck(uId);
	}

	@Override
	public String userLoginProcess(UserDto udto) {
		return userDao.userLoginProcess(udto);
	}

	@Override
	public String managerLoginProcess(ManagerDto mdto) {
		return userDao.managerLoginProcess(mdto);
	}

	@Override
	public UserDto userInfoProcess(String sessionUId) {
		return userDao.userInfo(sessionUId);
	}

	@Override
	public void updateUserInfoProcess(UserDto udto) {
		userDao.updateUserInfo(udto);
	}

	@Override
	public int userChkProcess(UserDto udto) {
		return userDao.userChk(udto);
	}

	@Override
	public void withdrawProcess(UserDto udto) {
		userDao.withdrawProcess(udto);
	}
	
	@Override
	public int userReviewCountProcess(String uId) {
		return userDao.userReviewCount(uId);
	}

	@Override
	public List<ReviewDto> userReviewInfoProcess(HashMap<String, Object> map) {
		return userDao.userReviewInfo(map);
	}

	@Override
	public List<InterestedPlaceDto> interestedPlaceProcess(HashMap<String, Object> map) {
		return userDao.interestedPlace(map);
	}

	@Override
	public List<InterestedRestaurantDto> interestedRestaurantProcess(HashMap<String, Object> map) {
		return userDao.interestedRestaurant(map);
	}

	@Override
	public List<InterestedFestivalDto> interestedFestivalProcess(HashMap<String, Object> map) {
		return userDao.interestedFestival(map);
	}

	@Override
	public List<InterestedStayDto> interestedStayProcess(HashMap<String, Object> map) {
		return userDao.interestedStay(map);
	}

	@Override
	public int interestedPlaceCountProcess(String uId) {
		return userDao.interestedPlaceCount(uId);
	}

	@Override
	public int interestedRestaurantCountProcess(String uId) {
		return userDao.interestedFestivalCount(uId);
	}

	@Override
	public int interestedFestivalCountProcess(String uId) {
		return userDao.interestedFestivalCount(uId);
	}

	@Override
	public int interestedStayCountProcess(String uId) {
		return userDao.interestedStayCount(uId);
	}

}
