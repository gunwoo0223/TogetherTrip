package trip.user.service;

import java.util.HashMap;
import java.util.List;

import trip.review.dto.ReviewDto;
import trip.user.dto.InterestedFestivalDto;
import trip.user.dto.InterestedPlaceDto;
import trip.user.dto.InterestedRestaurantDto;
import trip.user.dto.InterestedStayDto;
import trip.user.dto.ManagerDto;
import trip.user.dto.UserDto;

public interface UserService {

	public void joinProcess(UserDto udto);
	
	public int idCheckProcess(String uId);
	
	public String userLoginProcess(UserDto udto);
	
	public String managerLoginProcess(ManagerDto mdto);
	
	public UserDto userInfoProcess(String sessionUId);
	
	public void updateUserInfoProcess(UserDto udto);
	
	public int userChkProcess(UserDto udto);
	
	public void withdrawProcess(UserDto udto);
	
	public int userReviewCountProcess(String uId);
	
	public List<ReviewDto> userReviewInfoProcess(HashMap<String, Object> map);
	
	public int interestedPlaceCountProcess(String uId);
	
	public List<InterestedPlaceDto> interestedPlaceProcess(HashMap<String, Object> map);
	
	public int interestedRestaurantCountProcess(String uId);
	
	public List<InterestedRestaurantDto> interestedRestaurantProcess(HashMap<String, Object> map);
	
	public int interestedFestivalCountProcess(String uId);
	
	public List<InterestedFestivalDto> interestedFestivalProcess(HashMap<String, Object> map);
	
	public int interestedStayCountProcess(String uId);
	
	public List<InterestedStayDto> interestedStayProcess(HashMap<String, Object> map);
}








