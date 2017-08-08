package trip.user.controller;

import java.io.FileNotFoundException;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.List;
import java.util.Random;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import trip.review.dto.ReviewDto;
import trip.user.dto.InterestedFestivalDto;
import trip.user.dto.InterestedPlaceDto;
import trip.user.dto.InterestedRestaurantDto;
import trip.user.dto.InterestedStayDto;
import trip.user.dto.ManagerDto;
import trip.user.dto.PageDto;
import trip.user.dto.UserDto;
import trip.user.service.UserService;

@Controller
public class UserController {

	private UserService userService;
	private int currentPage; // 현재 페이지를 받기 위한 변수
	
	public UserController() {}
	
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	//회원가입버튼 눌렀을 때 회원가입폼으로 이동하는 메서드. 
	@RequestMapping(value="/joinForm.do", method=RequestMethod.GET)
	public String joinForm(){
		return "user/joinForm";
	}
	
	//사용자가 입력한 회원정보를 처리하는 메서드.
	@RequestMapping(value="/joinProcess.do", method=RequestMethod.POST)
	public String joinProcess(UserDto udto, String uYear, String uMonth, String uDay, String uAddressNumber, String uAddressBasic, String uAddressDetail){
		
		String uBirth = uYear+"-"+uMonth+"-"+uDay;
		String uAddress = uAddressNumber+","+uAddressBasic+","+uAddressDetail;
		udto.setuBirth(uBirth);
		udto.setuAddress(uAddress);
		userService.joinProcess(udto);
		return "redirect:/main.do";
	}
	
	//아이디 중복체크
	@RequestMapping(value="/idCheck.do", method=RequestMethod.POST ,produces="application/json;charset=UTF-8")
	public @ResponseBody HashMap<String, Object> idCheck(String uId){

		int check = userService.idCheckProcess(uId);
		String message = "";
		message = (check == 1) ? "이미 아이디가 존재합니다." : "사용할 수 있는 아이디입니다.";
		System.out.println(message);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("message", message);
		map.put("check", check);
		return map;
	}
	
	@Autowired
	private JavaMailSender mailSender;

	//이메일 인증번호 전송 메서드.
	@RequestMapping(value="/mail.do", method=RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> sendMail(String uEmail, String uName) throws FileNotFoundException, URISyntaxException {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		String msg = "";
		
		try {
			System.out.println(uEmail+" "+uName);
			String from = "gunwoo6752project@gmail.com"; //dispatcher에서 설정한 값으로 못가져오나?
			String title = "["+uName+"]님 together Trip 회원가입  인증번호입니다.";
			Random ran = new Random();
			int min = 10000;
			int max = 99999;
			int sendNum = ran.nextInt(max - min + 1) + min; //5자리수 난수 발생
			String contents = "인증번호 ["+sendNum+"]";
			
			MimeMessage message = mailSender.createMimeMessage();
			message.setFrom(new InternetAddress(from));
			message.addRecipient(RecipientType.TO, new InternetAddress(uEmail));
			message.setSubject(title); 
			message.setText(contents, "utf-8", "html");

			mailSender.send(message);

			msg = uEmail+"으로 인증번호가 발송되었습니다. 3분이내로 인증번호를 아래에 입력해 주시기 바랍니다.";
			map.put("msg", msg);
			map.put("sendNum", sendNum);
			
		} catch (Exception e) {
			System.out.println(e.toString());
			e.printStackTrace();
			msg = e.toString();
			map.put("msg", "이메일 주소를 확인해주세요.");
		}
		return map;
	}
	
	//이메일 인증번호 입력 후 맞는지 체크하는 메서드
	@RequestMapping(value="/checkNum.do", method=RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> checkNum(String chkNum, String sendNum){
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		String msg = "";
		int check = 0;
		
		if(chkNum.equals(sendNum)){
			msg = "인증번호가 일치합니다.";
			check = 1;
		}else{
			msg = "인증번호가 일치하지 않습니다.";
			check = 0;
		}
		map.put("msg", msg);
		map.put("check", check);
		
		return map;
	}
	
	//로그인 버튼 눌렀을 때 나타날 창
	@RequestMapping(value="/loginForm.do", method=RequestMethod.GET)
	public String loginForm(){
		return "user/loginForm";
	}
	
/*	//사용자가 로그인시 아이디와 비밀번호를 누르고 로그인요청을 했을 시 처리되는 코드
	@RequestMapping(value="/userLoginProcess.do", method=RequestMethod.POST)
	public String userLoginProcess(UserDto udto, HttpSession session){
		int userCheck = 0;
		userCheck = userService.userLoginProcess(udto);
		if(userCheck == 1){
			session.setAttribute("uId", udto.getuId());
			return "redirect:/main.do";
		}else{
			return "user/loginForm";
		}
	}*/
	
	//사용자가 로그인시 아이디와 비밀번호를 누르고 로그인요청을 했을 시 처리되는 코드
	@RequestMapping(value="/userLoginProcess.do", method=RequestMethod.POST)
	public String userLoginProcess(UserDto udto, HttpSession session){

		String uName = userService.userLoginProcess(udto);
		if(uName != null){
			session.setAttribute("uName", uName);
			session.setAttribute("uId", udto.getuId());
			return "redirect:/main.do";
		}else{
			return "user/loginForm";
		}
	}
	
	//관리자가 로그인시 아이디와 비밀번호를 누르고 로그인요청을 했을 시 처리되는 코드
	@RequestMapping(value="/adminLoginProcess.do", method=RequestMethod.POST)
	public String adminLoginProcess(ManagerDto mdto, HttpSession session){
		String mName = userService.managerLoginProcess(mdto);
		if(mName != null){
			session.setAttribute("mName", mName);
			session.setAttribute("mId", mdto.getmId());
			return "redirect:/main.do";
		}else{
			return "user/loginForm";
		}
	}
	
	//로그아웃버튼눌렀을 때
	@RequestMapping(value="/logout.do", method=RequestMethod.GET)
	public String logout(HttpSession session){
		if(session.getAttribute("uId") != null){
			session.removeAttribute("uId");
			session.removeAttribute("uName");
		}else if(session.getAttribute("mId") != null){
			session.removeAttribute("mId");
			session.removeAttribute("mName");
		}
		return "redirect:/main.do";
	}
	
	//사용자 정보탭으로 이동
	@RequestMapping(value="/userInfo.do", method=RequestMethod.GET)
	public ModelAndView userInfo(HttpSession session){
		String sessionUId = (String) session.getAttribute("uId");
		UserDto udto = userService.userInfoProcess(sessionUId);
		String[] uAddress = udto.getuAddress().split(",");
		String uAddressNumber = uAddress[0];
		String uAddressBasic = uAddress[1];
		String uAddressDetail = uAddress[2];
		String newAddress = "("+uAddressNumber+")"+uAddressBasic+" "+uAddressDetail;
		udto.setuAddress(newAddress);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("udto", udto);
		mav.setViewName("user/mypage/userInfo");
		return mav;
	}
	
	//사용자 정보수정하는 페이지로 이동
	@RequestMapping(value="/userInfoUpdate.do", method=RequestMethod.GET)
	public ModelAndView userInfoUpdate(HttpSession session){
		
		String sessionUId = (String) session.getAttribute("uId");
		
		UserDto udto = userService.userInfoProcess(sessionUId);
		
		ModelAndView mav = new ModelAndView();

		String[] uBirth = udto.getuBirth().split("-");
		String[] uAddress = udto.getuAddress().split(",");
		String uYear = uBirth[0];
		String uMonth = uBirth[1];
		String uDay = uBirth[2];
		String uAddressNumber = uAddress[0];
		String uAddressBasic = uAddress[1];
		String uAddressDetail = uAddress[2];
		
		mav.addObject("udto", udto);
		mav.addObject("uYear", uYear);
		mav.addObject("uMonth", uMonth);
		mav.addObject("uDay", uDay);
		mav.addObject("uAddressNumber", uAddressNumber);
		mav.addObject("uAddressBasic", uAddressBasic);
		mav.addObject("uAddressDetail", uAddressDetail);

		mav.setViewName("user/mypage/userInfoUpdate");
		return mav;
	}
	
	//회원정보 수정하고 수정완료버튼 눌렀을 때.
	@RequestMapping(value="/userInfoUpdateProcess.do", method=RequestMethod.POST)
	public String userInfoUpdateProcess(UserDto udto, String uYear, String uMonth, String uDay, String uAddressNumber, String uAddressBasic, String uAddressDetail){
		String uBirth = uYear+"-"+uMonth+"-"+uDay;
		String uAddress = uAddressNumber+","+uAddressBasic+","+uAddressDetail;
		udto.setuBirth(uBirth);
		udto.setuAddress(uAddress);
		
		userService.updateUserInfoProcess(udto);
		
		return "redirect:/userInfo.do";
	}
	
	//관심정보 탭으로 이동
	@RequestMapping(value="/interestedInfo.do", method=RequestMethod.GET)
	public String interestedInfo(){
		return "user/mypage/interestedInfo";
	}
	
	//예약정보 탭으로 이동
	@RequestMapping(value="/reservationInfo.do", method=RequestMethod.GET)
	public String reservationInfo(){
		return "user/mypage/reservationInfo";
	}
	
	//작성한 글탭으로 이동
	@RequestMapping(value="/reviewInfo.do", method=RequestMethod.GET)
	public ModelAndView reviewInfo(HttpSession session, PageDto pgdto){
		ModelAndView mav = new ModelAndView();
		
		//다른 페이징 처리는 파라미터값으로 PageDto 하나만 넘기는데, 여기선 아이디에 해당하는 값만 가져와야 하니까 조건이 하나 추가된다.
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		int totalRecord = userService.userReviewCountProcess((String)session.getAttribute("uId"));
		
		if(totalRecord >= 1){
			if(pgdto.getCurrentPage() == 0){
				currentPage = 1;
			}else{
				currentPage = pgdto.getCurrentPage();
			}
			pgdto = new PageDto(currentPage, totalRecord);
			
			map.put("uId", (String)session.getAttribute("uId"));
			map.put("pgdto", pgdto);
			
			List<ReviewDto> rvList = userService.userReviewInfoProcess(map);
			mav.addObject("rvList", rvList);
			mav.addObject("pgdto", pgdto);
		}
		
		mav.setViewName("user/mypage/reviewInfo");
		
		return mav;
	}
	
	//회원탈퇴탭으로 이동
	@RequestMapping(value="/withdraw.do", method=RequestMethod.GET)
	public ModelAndView withdraw(HttpSession session){
		ModelAndView mav = new ModelAndView();
		String sessionUId = (String)session.getAttribute("uId");
		
		mav.addObject("sessionUId", sessionUId);
		mav.setViewName("user/mypage/withdraw");
		
		return mav;
	}
	
	//회원검사(회원탈퇴시 아이디와 비밀번호를 확인하고 일치하면 아래 withdrawProcess메서드를 실행)
	@RequestMapping(value="/userChk.do", method=RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> userchk(UserDto udto){
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		int userChk = userService.userChkProcess(udto);
		map.put("userChk", userChk);
		
		return map;
	}
	
	//회원탈퇴버튼 눌렀을 때 발생하는 코드
	@RequestMapping(value="/withdrawProcess.do", method=RequestMethod.GET)
	public String withdrawProcess(UserDto udto, HttpSession session){
		userService.withdrawProcess(udto);
		if(session.getAttribute("uId") != null)
			session.removeAttribute("uId");
		return "redirect:/main.do";
	}
	
	/* 관심정보 */
	
	//명소 관심정보
	@RequestMapping(value="/interestedPlace.do", method=RequestMethod.GET)
	public ModelAndView interestedPlace(String uId, PageDto pgdto){
		ModelAndView mav = new ModelAndView();
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		int totalRecord = userService.interestedPlaceCountProcess(uId);
		
		if(totalRecord >= 1){
			if(pgdto.getCurrentPage() == 0){
				currentPage = 1;
			}else{
				currentPage = pgdto.getCurrentPage();
			}
			pgdto = new PageDto(currentPage, totalRecord);
			
			map.put("uId", uId);
			map.put("pgdto", pgdto);
			
			List<InterestedPlaceDto> ipList = userService.interestedPlaceProcess(map);
			mav.addObject("ipList", ipList);
			mav.addObject("pgdto", pgdto);
			//관심정보select box에서 어떤 걸 클릭했는지 파악하여 selected되도록, 그리고 여기선 place리스트가 뿌려지도록 하기위해.
			mav.addObject("check", "place"); 
		}

		mav.setViewName("user/mypage/interestedInfo");
		return mav;
	}
	
	//맛집 관심정보
	@RequestMapping(value="/interestedRestaurant.do", method=RequestMethod.GET)
	public ModelAndView interestedRestaurant(String uId, PageDto pgdto){
		ModelAndView mav = new ModelAndView();
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		int totalRecord = userService.interestedRestaurantCountProcess(uId);
		
		if(totalRecord >= 1){
			if(pgdto.getCurrentPage() == 0){
				currentPage = 1;
			}else{
				currentPage = pgdto.getCurrentPage();
			}
			pgdto = new PageDto(currentPage, totalRecord);
			
			map.put("uId", uId);
			map.put("pgdto", pgdto);
			
			List<InterestedRestaurantDto> irList = userService.interestedRestaurantProcess(map);
			mav.addObject("irList", irList);
			mav.addObject("pgdto", pgdto);
			//관심정보select box에서 어떤 걸 클릭했는지 파악하여 selected되도록, 그리고 여기선 place리스트가 뿌려지도록 하기위해.
			mav.addObject("check", "restaurant"); 
		}
		
		mav.setViewName("user/mypage/interestedInfo");
		return mav;
	}
		
	//축제 관심정보
	@RequestMapping(value="/interestedFestival.do", method=RequestMethod.GET)
	public ModelAndView interestedFestival(String uId, PageDto pgdto){
		ModelAndView mav = new ModelAndView();
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		int totalRecord = userService.interestedFestivalCountProcess(uId);
		
		if(totalRecord >= 1){
			if(pgdto.getCurrentPage() == 0){
				currentPage = 1;
			}else{
				currentPage = pgdto.getCurrentPage();
			}
			pgdto = new PageDto(currentPage, totalRecord);
			
			map.put("uId", uId);
			map.put("pgdto", pgdto);
			
			List<InterestedFestivalDto> ifList = userService.interestedFestivalProcess(map);
			mav.addObject("ifList", ifList);
			mav.addObject("pgdto", pgdto);
			//관심정보select box에서 어떤 걸 클릭했는지 파악하여 selected되도록, 그리고 여기선 place리스트가 뿌려지도록 하기위해.
			mav.addObject("check", "festival"); 
		}
		
		mav.setViewName("user/mypage/interestedInfo");
		return mav;
	}
		
	//숙박 관심정보
	@RequestMapping(value="/interestedStay.do", method=RequestMethod.GET)
	public ModelAndView interestedStay(String uId, PageDto pgdto){
		ModelAndView mav = new ModelAndView();
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		int totalRecord = userService.interestedStayCountProcess(uId);
		
		if(totalRecord >= 1){
			if(pgdto.getCurrentPage() == 0){
				currentPage = 1;
			}else{
				currentPage = pgdto.getCurrentPage();
			}
			pgdto = new PageDto(currentPage, totalRecord);
			
			map.put("uId", uId);
			map.put("pgdto", pgdto);
			
			List<InterestedStayDto> isList = userService.interestedStayProcess(map);
			mav.addObject("isList", isList);
			mav.addObject("pgdto", pgdto);
			//관심정보select box에서 어떤 걸 클릭했는지 파악하여 selected되도록, 그리고 여기선 place리스트가 뿌려지도록 하기위해.
			mav.addObject("check", "stay"); 
		}
		
		mav.setViewName("user/mypage/interestedInfo");
		return mav;
	}
	
}









