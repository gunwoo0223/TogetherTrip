package trip.allSearch.controller;

import java.util.HashMap;
import java.util.spi.TimeZoneNameProvider;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import trip.allSearch.dto.PageDTO;
import trip.allSearch.service.AllSearchService;

@Controller
public class AllSearchController {

	private AllSearchService allSearchService;
	private int currentPage;
	private PageDTO pdto;

	public AllSearchController() {
	}

	public void setAllSearchService(AllSearchService allSearchService) {
		this.allSearchService = allSearchService;
	}

	// 한눈에보기 페이지
	@RequestMapping("/allSearch.do")
	public String allSearchViewMethod() {
		return "allSearch/allSearch";
	}

	// 검색 결과를 넘겨줌
	@RequestMapping("/searchResult.do")
	public ModelAndView searchResultProcess(String state, String city, String topicList, String topic, PageDTO pv) {
		ModelAndView mav = new ModelAndView();
		
		System.out.println("state : "+state);
		System.out.println("city : "+city);
		System.out.println("topicList : "+topicList);
		System.out.println("topic : "+topic);
		System.out.println("allSearch 제발 되어라");
		
		int totalRecords = 0; // 불러올 테이블의 레코드 수를 반환할 변수를 선언
		
		String[] splitTopic = topicList.split(":");
	
		String topicStr = splitTopic[0]; 	// 기본값 all
		
		for(int i = 1; i < splitTopic.length; i++) {
			topicStr += ":" + splitTopic[i];
		}
		
		if(city.equals("전체")) {
			// 해당 지역의 전체를 불러올때
			HashMap<String, Object> map = new HashMap<String, Object>();
			if(topic.equals("all")) {
				totalRecords = allSearchService.allCountProcess(state);
			} else {
				map.put("tableName", topic);
				map.put("locName", state);
				totalRecords = allSearchService.countProcess(map);
			}
			
			if(totalRecords >= 1) {
				if(pv.getCurrentPage() == 0) {
					currentPage = 1;
				} else {
					currentPage = pv.getCurrentPage();
				}
				pdto = new PageDTO(currentPage, totalRecords);
				
				mav.addObject("pv", pdto);
			}
			
			if(topic.equals("all")) {
				map.put("tableName", topic);
				map.put("locName", state);
				map.put("pv", pdto);
				mav.addObject("chkAllArea", allSearchService.allListProcess(map));
			} else {
				map.put("tableName", topic);
				map.put("stateName", state);
				map.put("pv", pdto);
				mav.addObject("chkAllArea", allSearchService.allStateProcess(map));
			}
			
			mav.addObject("chkTopic", splitTopic);
			mav.addObject("topic", topic);
			mav.addObject("topicStr", topicStr);
		} else {     
			// 해당 지역의 상세 지역을 불러올때
			HashMap<String, Object> map = new HashMap<String, Object>();
			
			if(topic.equals("all")) {
				// ex) 강남 전체의 숙박, 명소, 맛집, 축제의 데이터갯수를 불러옴
				totalRecords = allSearchService.allCountProcess(city);
			} else {
				// ex) 강남의 명소테이블의 데이터갯수를 불러옴
				map.put("tableName", topic);
				map.put("locName", city);
				totalRecords = allSearchService.countProcess(map);
			}
			
			if(totalRecords >= 1) {
				if(pv.getCurrentPage() == 0) {
					currentPage = 1;
				} else {
					currentPage = pv.getCurrentPage();
				}
				pdto = new PageDTO(currentPage, totalRecords);
				
				mav.addObject("pv", pdto);
			}
			
			if(topic.equals("all")) {
				map.put("tableName", topic);
				map.put("locName", city);
				map.put("pv", pdto);
				mav.addObject("chkArea", allSearchService.allListProcess(map));
			} else {
				map.put("tableName", topic);
				map.put("cityName", city);
				map.put("pv", pdto);
				mav.addObject("chkArea", allSearchService.cityListProcess(map));
			}
			
			mav.addObject("chkTopic", splitTopic);
			mav.addObject("topic", topic);
			mav.addObject("topicStr", topicStr);
		}

		mav.setViewName("allSearch/result");
		return mav;
	}
}
