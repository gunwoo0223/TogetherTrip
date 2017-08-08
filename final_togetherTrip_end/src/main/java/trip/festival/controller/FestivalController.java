package trip.festival.controller;

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

import trip.festival.dto.FestivalDto;
import trip.festival.dto.GoodDto;
import trip.festival.dto.PageDto;
import trip.festival.service.FestivalService;


@Controller
public class FestivalController {
	private FestivalService festivalService;
	private int currentPage;
	
	public FestivalController() {}
	
	public void setFestivalService(FestivalService festivalService) {
		this.festivalService = festivalService;
	}
	
	
	@RequestMapping(value="/festival.do",method=RequestMethod.GET)
	public ModelAndView listMethod(PageDto pgdto){
		ModelAndView mav = new ModelAndView();
		
		int totalRecord = festivalService.countProcess();
		
		if(totalRecord>=1){
			if(pgdto.getCurrentPage()==0){
				currentPage = 1;
			}else{
				currentPage = pgdto.getCurrentPage();
			}
			pgdto = new PageDto(currentPage, totalRecord);
			List<FestivalDto> fList = festivalService.listProcess(pgdto);
			mav.addObject("fList", fList);
			mav.addObject("pgdto",pgdto);
			mav.addObject("totalRecord",totalRecord);
		}
		mav.setViewName("festival/main");
		return mav;
	}
	
	@RequestMapping(value="/festival_detail.do",method=RequestMethod.GET)
	public ModelAndView viewMethod(int f_num){
		ModelAndView mav = new ModelAndView();
		GoodDto gdto = new GoodDto();
		gdto.setF_num(f_num);
		mav.addObject("fdto",festivalService.contentProcess(f_num));
		mav.addObject("fidto", festivalService.imgListProcess(f_num));
		
		//하단 지도에 표시될 주소를 가져와 담는 코드인데, 주소(f_loc)가 상세하면 지도에 표시가 안되서 
		//f_loc대신 f_state(시, ex 강릉시 )를 넣음
		String f_state = festivalService.mapProcess(f_num);

		mav.addObject("map", f_state);
		if (festivalService.goodCountProcess(gdto) == null) {
			mav.addObject("goodCount", 0);
		} else {
			mav.addObject("goodCount", festivalService.goodCountProcess(gdto));
		}
		mav.setViewName("festival/festival_detail");
		return mav;
	}
	
	@RequestMapping(value = "/maps.do", produces = "application/json;charset=UTF-8")
	public @ResponseBody String change(String f_loc) throws MalformedURLException, IOException, JAXBException {
		String url = "https://apis.daum.net/local/geo/addr2coord?apikey=d26bf9c539420ca7dc45555399169d1f&q="
				+ URLEncoder.encode(f_loc, "UTF-8") + "&output=json";
		HttpURLConnection con = (HttpURLConnection) new URL(url).openConnection();
		BufferedReader reader = new BufferedReader(new InputStreamReader(con.getInputStream(), "UTF-8"));
		String input = null;
		String total = "";
		System.out.println(f_loc);
		while ((input = reader.readLine()) != null) {
			total += input;
		}
		return total;
	}
	
	@RequestMapping(value="/increaseFestivalGood.do", method=RequestMethod.POST)
	public @ResponseBody int increaseFestivalGood(GoodDto gdto){
		int goodCount = 0;
		
		int checkGood = festivalService.goodCheckProcess(gdto);

		if(checkGood == 1){
			goodCount = -1;
		}else{
			goodCount = festivalService.increaseFestivalGoodProcess(gdto);
		}
		return goodCount;
	}
}











