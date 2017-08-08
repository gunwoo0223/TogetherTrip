package trip.main.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import trip.main.service.MainService;

@Controller
public class MainController {

	private MainService mainService;
	
	public MainController() {}
	
	public void setMainService(MainService mainService) {
		this.mainService = mainService;
	}
	
	@RequestMapping("/main.do")
	public ModelAndView form(){
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("pList", mainService.placeDataProcess());
		mav.addObject("rList", mainService.restaurantDataProcess());
		mav.addObject("fList", mainService.festivalDataProcess());
		mav.addObject("sList", mainService.stayDataProcess());
		mav.setViewName("main/index");
		
		return mav;
	}
	
	@RequestMapping(value="introduce.do", method=RequestMethod.GET)
	public String introduce(){
		return "main/introduce";
	}
}








