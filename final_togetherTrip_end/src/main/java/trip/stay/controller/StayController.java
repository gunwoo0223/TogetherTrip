package trip.stay.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.xml.bind.JAXBException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import trip.stay.dto.PageDto;
import trip.stay.dto.ReserveDto;
import trip.stay.dto.StayDto;
import trip.stay.service.StayService;

@Controller
public class StayController {

	private StayService stayService;
	private int currentPage;
	
	public StayController() {}
	
	public void setStayService(StayService stayService) {
		this.stayService = stayService;
	}
	
	//http://localhost:8090/trip/stay.do
	@RequestMapping("/stay.do")
	public ModelAndView bb(PageDto pgdto){
		ModelAndView mav=new ModelAndView();
		
		int totalRecord=stayService.countProcess();
		
		if(totalRecord>=1){
			if(pgdto.getCurrentPage()==0) {
				currentPage=1;
			}else{
				currentPage=pgdto.getCurrentPage();	
			}
			pgdto=new PageDto(currentPage,totalRecord);
			List<StayDto> sList = stayService.listProcess(pgdto);
			mav.addObject("sList", sList);
			mav.addObject("pgdto", pgdto);
			mav.addObject("cnt", stayService.stay_cntProcess());
 		}
		
		mav.setViewName("stay/staymain");
		return mav;
	}
	
	// 메인페이지에서 s_num값을 받아 상세페이지로 넘긴다.
	@RequestMapping(value="/detail.do")
	public ModelAndView detailPage(int s_num){
		ModelAndView mav=new ModelAndView();
		//GoodDto gdto = new GoodDto();
		//gdto.setS_num(s_num);
		mav.addObject("stay", stayService.StayInfoProcess(s_num));
		mav.addObject("stayImg", stayService.StayImgInfoProcess(s_num));
		mav.addObject("hotelInfo", stayService.hotelInfoProcess(s_num));
		mav.addObject("motelInfo", stayService.motelInfoProcess(s_num));
		mav.addObject("pensionInfo", stayService.pensionInfoProcess(s_num));

		//하단 지도에 표시될 주소를 가져와 담는 코드인데, 주소(s_loc)가 상세하면 지도에 표시가 안되서 
		//s_loc대신 s_state(시, ex 강릉시 )를 넣음
		String s_state = stayService.mapProcess(s_num);
		
		mav.addObject("map", s_state);
		/*if(stayService.selectGoodProcess(gdto) == null){
			mav.addObject("goodCount",0);
		}
		else{
			mav.addObject("goodCount",stayService.selectGoodProcess(gdto));
		}*/
		mav.setViewName("stay/detail2");
		return mav;
	}
	
	@RequestMapping(value="/reserve.do",method=RequestMethod.POST)
	public String reserve(ReserveDto dto,HttpServletRequest request){
		//System.out.println(request.getParameter("s_num"));
		//System.out.println(dto.getS_num());
		stayService.reserveProcess(dto);
		return "redirect:/stay.do";
	}
	
	@RequestMapping(value="/searchLoad.do") 
	public ModelAndView searchLoad(String s_title){
		ModelAndView mav=new ModelAndView();
		mav.addObject("loc", s_title);
		mav.setViewName("stay/map2");
		return mav;
	}
	
	@RequestMapping(value="/searchLoad2.do")
	public String searchLoad2(){
		//String url="";
		return "stay/searchLoad";
	}
	
	@RequestMapping(value="/reservation.do" )
	public ModelAndView reservation(int s_num){
		ModelAndView mav=new ModelAndView();
		mav.addObject("hotelInfo", stayService.hotelInfoProcess(s_num));
		mav.setViewName("stay/datepicker");
		return mav;
	}
	
	/*@RequestMapping(value="/date.do")
	public String date(){
		return "stay/reservation";
	}*/
	
	@RequestMapping(value="/datepicker.do", method=RequestMethod.GET)
	public String datepicker(){
		return "stay/datepicker";
	}
	
	@RequestMapping(value="/pay.do")
	public String pay(){
		return "stay/pay";
	}

	// 검색할 때 자동완성기능 추가 -> http://jqueryui.com/autocomplete/

	/*@RequestMapping(value="/form.do") 
	public String change2(String s_loc){
		return "stay/change";
	}*/
	
	@RequestMapping(value="/change.do",produces="application/json;charset=UTF-8")
	public @ResponseBody String change(String s_loc) throws MalformedURLException, IOException, JAXBException{
		String url="https://apis.daum.net/local/geo/addr2coord?apikey=d26bf9c539420ca7dc45555399169d1f&q="+URLEncoder.encode(s_loc,"UTF-8")+"&output=json";
		HttpURLConnection con=(HttpURLConnection)new URL(url).openConnection();
		BufferedReader reader=new BufferedReader(new InputStreamReader(con.getInputStream(),"UTF-8"));
		String input = null;
		String total = "";
		while((input = reader.readLine()) != null){
			total += input;
		}
		//System.out.println(s_loc);
		//System.out.println(total);
		return total;
	}
	
	@RequestMapping("/write.do")
	public ModelAndView write(){
		ModelAndView mav=new ModelAndView();
		//mav.addObject("list", stayService.stay_cntProcess());
		mav.setViewName("stay/write");
		return mav;
	}
	
	

}//end class
