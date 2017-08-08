package trip.place.controller;

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

import trip.place.dto.GoodDto;
import trip.place.dto.PageDto;
import trip.place.dto.PlaceDto;
import trip.place.service.PlaceService;

@Controller
public class PlaceController {
	private PlaceService placeService;

	private int currentPage;

	public PlaceController() {}

	public void setPlaceService(PlaceService placeService) {
		this.placeService = placeService;
	}

	@RequestMapping("/pmain.do")
	public ModelAndView views(PageDto pgdto) {
		ModelAndView mv = new ModelAndView();
		
		int totalRecord = placeService.cntProcess();
		
		if (totalRecord >= 1) {
			if (pgdto.getCurrentPage() == 0){
				currentPage = 1;
			}else{
				currentPage = pgdto.getCurrentPage();
			}
			pgdto = new PageDto(currentPage, totalRecord);
			List<PlaceDto> pList = placeService.listProcess(pgdto);
			mv.addObject("cnt", placeService.cntProcess());
			mv.addObject("pList", pList);
			mv.addObject("pgdto", pgdto);
		}
		mv.setViewName("place/pmain");
		return mv;
	}

	@RequestMapping("/place.do")
	public ModelAndView detail(int p_num) {
		ModelAndView mv = new ModelAndView();
		GoodDto gdto = new GoodDto();
		gdto.setP_num(p_num);
		mv.addObject("pDetail", placeService.detailProcess(p_num));

		//하단 지도에 표시될 주소를 가져와 담는 코드인데, 주소(p_loc)가 상세하면 지도에 표시가 안되서 
		//p_loc대신 p_state(시, ex 강릉시 )를 넣음
		String p_state = placeService.mapProcess(p_num);
		
		mv.addObject("map", p_state);
		if (placeService.selectGoodProcess(gdto) == null) {
			mv.addObject("goodCount", 0);
		} else {
			mv.addObject("goodCount", placeService.selectGoodProcess(gdto));
		}

		mv.setViewName("place/place");
		return mv;
	}

	//길찾기
	@RequestMapping(value = "/change2.do", produces = "application/json;charset=UTF-8")
	public @ResponseBody String change(String p_loc) throws MalformedURLException, IOException, JAXBException {
		
		String url = "https://apis.daum.net/local/geo/addr2coord?apikey=d26bf9c539420ca7dc45555399169d1f&q="
				+ URLEncoder.encode(p_loc, "UTF-8") + "&output=json";
		HttpURLConnection con = (HttpURLConnection) new URL(url).openConnection();
		BufferedReader reader = new BufferedReader(new InputStreamReader(con.getInputStream(), "UTF-8"));
		String input = null;
		String total = "";
		while ((input = reader.readLine()) != null) {
			total += input;
		}
		return total;
	}

	@RequestMapping(value = "/increaseGood.do", method = RequestMethod.POST)
	public @ResponseBody int increaseGood(GoodDto gdto) {
		int goodCount=0;
		int checkGood = placeService.checkGoodProcess(gdto);
		
		if (checkGood == 1) {
			goodCount = -1;
		} else{
			goodCount = placeService.insertGoodProcess(gdto);
		}
		return goodCount;
	}
}
