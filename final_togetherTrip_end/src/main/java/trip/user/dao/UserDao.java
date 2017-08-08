package trip.user.dao;

import java.util.HashMap;
import java.util.List;

import trip.review.dto.ReviewDto;
import trip.user.dto.InterestedFestivalDto;
import trip.user.dto.InterestedPlaceDto;
import trip.user.dto.InterestedRestaurantDto;
import trip.user.dto.InterestedStayDto;
import trip.user.dto.ManagerDto;
import trip.user.dto.UserDto;

public interface UserDao {

	public void joinProcess(UserDto udto);
	
	public int idCheck(String uId);
	
	public String userLoginProcess(UserDto udto);
	
	public String managerLoginProcess(ManagerDto mdto);
	
	public UserDto userInfo(String sessionUId);
	
	public void updateUserInfo(UserDto udto);
	
	public int userChk(UserDto udto);
	
	public void withdrawProcess(UserDto udto);
	
	public int userReviewCount(String uId);
	
	public List<ReviewDto> userReviewInfo(HashMap<String, Object> map);
	
	public int interestedPlaceCount(String uId);
	
	public List<InterestedPlaceDto> interestedPlace(HashMap<String, Object> map);
	
	public int interestedRestaurantCount(String uId);
	
	public List<InterestedRestaurantDto> interestedRestaurant(HashMap<String, Object> map);
	
	public int interestedFestivalCount(String uId);
	
	public List<InterestedFestivalDto> interestedFestival(HashMap<String, Object> map);
	
	public int interestedStayCount(String uId);
	
	public List<InterestedStayDto> interestedStay(HashMap<String, Object> map);
	
}









