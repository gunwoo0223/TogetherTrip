package trip.restaurant.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.List;
import java.util.StringTokenizer;

import javax.xml.bind.JAXBException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import trip.restaurant.dto.GoodDto;
import trip.restaurant.dto.PageDto;
import trip.restaurant.dto.RestaurantDto;
import trip.restaurant.service.RestaurantService;

@Controller
public class RestaurantController {

	private RestaurantService restaurantService;

	private int currentPage;
	
	public RestaurantController() {}
	
	public void setRestaurantService(RestaurantService restaurantService) {
		this.restaurantService = restaurantService;
	}
	
	@RequestMapping("/rmain.do")
	public ModelAndView views(PageDto pgdto){
		ModelAndView mv = new ModelAndView();
		
		int totalRecord = restaurantService.cntProcess();
		
		if(totalRecord >= 1){
			if(pgdto.getCurrentPage() == 0){
				currentPage = 1;
			}
			else{
				currentPage = pgdto.getCurrentPage();
			}
			pgdto = new PageDto(currentPage, totalRecord);
			List<RestaurantDto> rList = restaurantService.listProcess(pgdto);
			mv.addObject("cnt",restaurantService.cntProcess());
			mv.addObject("pgdto",pgdto);
			mv.addObject("rList", rList);
		}
		mv.setViewName("restaurant/rmain");
		return mv;
	}
	
	@RequestMapping("/res.do")
	public ModelAndView detail(int r_num){
		ModelAndView mv = new ModelAndView();
		GoodDto gdto = new GoodDto();
		gdto.setR_num(r_num);
		mv.addObject("list2",restaurantService.detailProcess(r_num));
		
		//하단 지도에 표시될 주소를 가져와 담는 코드인데, 주소(r_loc)가 상세하면 지도에 표시가 안되서 
		//r_loc대신 r_state(시, ex 강릉시 )를 넣음
		String r_state = restaurantService.mapProcess(r_num);
		
		mv.addObject("map", r_state);
		if(restaurantService.selectGoodProcess(gdto) == null){
			mv.addObject("goodCount",0);
		}
		else{
			mv.addObject("goodCount",restaurantService.selectGoodProcess(gdto));
		}
		mv.setViewName("restaurant/restaurant");
		return mv;
	}
	
	@RequestMapping(value="/roadview.do",produces="application/json;charset=UTF-8")
	   public @ResponseBody String change(String r_loc) throws MalformedURLException, IOException, JAXBException{
	      String url="https://apis.daum.net/local/geo/addr2coord?apikey=d26bf9c539420ca7dc45555399169d1f&q="+URLEncoder.encode(r_loc,"UTF-8")+"&output=json";
	      HttpURLConnection con=(HttpURLConnection)new URL(url).openConnection();
	      BufferedReader reader=new BufferedReader(new InputStreamReader(con.getInputStream(),"UTF-8"));
	      String input = null;
	      String total = "";
	      System.out.println(r_loc);
	      while((input = reader.readLine()) != null){
	         total += input;
	      }
	      return total;
	   }
	
	@RequestMapping(value="/increGood.do", method=RequestMethod.POST)
	public @ResponseBody int increGood(GoodDto gdto){
		int goodCount = 0;
		int checkGood = restaurantService.checkGoodProcess(gdto);

		if(checkGood == 1) {
			goodCount = -1;
		}
		else{
			goodCount = restaurantService.insertGoodProcess(gdto);
		}
		return goodCount;
	}
	
}
