package trip.manager.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import trip.festival.dto.FestivalDto;
import trip.festival.dto.FestivalImgDto;
import trip.manager.service.ManagerService;
import trip.place.dto.PlaceDto;
import trip.place.dto.PlaceImgDto;
import trip.restaurant.dto.RestaurantDto;
import trip.restaurant.dto.RestaurantImgDto;
import trip.stay.dto.StayDto;
import trip.user.dto.PageDto;
import trip.user.dto.UserDto;

@Controller
public class ManagerController {
	
	private ManagerService managerService;
	private int currentPage; // 현재 페이지를 받기 위한 변수
	
	public ManagerController(){}
	
	public void setManagerService(ManagerService managerService) {
		this.managerService = managerService;
	}

	@RequestMapping("/manager.do")
	public String form(){
		return "manager/index";
	}
	
	@RequestMapping(value="managerLogout.do", method = RequestMethod.GET)
	public String logout(HttpSession session){
		
		if(session.getAttribute("mId") != null){
			session.removeAttribute("mId");
			session.removeAttribute("mName");
		}
		
		return "redirect:/main.do";
	}
	
	@RequestMapping("/placeForm.do")
	public String placeForm(){
		return "manager/place/placeForm";
	}
	
	@RequestMapping("/restaurantForm.do")
	public String restaurantForm(){
		return "manager/restaurant/restaurantForm";
	}
	
	@RequestMapping("/stayForm.do")
	public String stayForm(){
		return "manager/stay/stayForm";
	}
	
	@RequestMapping("/festivalForm.do")
	public String festivalForm(){
		return "manager/festival/festivalForm";
	}
	
	/* place 게시글 리스트 가져오기 */
	@RequestMapping("/placeBoard.do")
	public ModelAndView place(PageDto pgdto){
		ModelAndView mav = new ModelAndView();
		
		int totalRecord = managerService.placeCountProcess();
		
		if(totalRecord >= 1){
			if(pgdto.getCurrentPage() == 0){
				currentPage = 1;
			}else{
				currentPage = pgdto.getCurrentPage();
			}
			pgdto = new PageDto(currentPage, totalRecord);
			List<PlaceDto> pList = managerService.placeList(pgdto);
			mav.addObject("pList", pList);
			mav.addObject("pgdto", pgdto);
		}
		mav.setViewName("manager/place/placeBoard");
		return mav;
	}
	
	/* festival 게시글 리스트 가져오기 */
	@RequestMapping("/festivalBoard.do")
	public ModelAndView festival(PageDto pgdto){
		ModelAndView mav = new ModelAndView();
		
		int totalRecord = managerService.festivalCountProcess();
		
		if(totalRecord >= 1){
			if(pgdto.getCurrentPage() == 0){
				currentPage = 1;
			}else{
				currentPage = pgdto.getCurrentPage();
			}
			pgdto = new PageDto(currentPage, totalRecord);
			List<FestivalDto> fList = managerService.festivalList(pgdto);
			mav.addObject("fList", fList);
			mav.addObject("pgdto", pgdto);
		}
		mav.setViewName("manager/festival/festivalBoard");
		return mav;
	}
	
	/* stay 게시글 리스트 가져오기 */
	@RequestMapping("/stayBoard.do")
	public ModelAndView stay(PageDto pgdto){
		ModelAndView mav = new ModelAndView();
		
		int totalRecord = managerService.stayCountProcess();
		
		if(totalRecord >= 1){
			if(pgdto.getCurrentPage() == 0){
				currentPage = 1;
			}else{
				currentPage = pgdto.getCurrentPage();
			}
			pgdto = new PageDto(currentPage, totalRecord);
			List<StayDto> sList = managerService.stayList(pgdto);
			mav.addObject("sList", sList);
			mav.addObject("pgdto", pgdto);
		}
		mav.setViewName("manager/stay/stayBoard");
		return mav;
	}
	
	/* restaurant 게시글 리스트 가져오기 */
	@RequestMapping("/restaurantBoard.do")
	public ModelAndView restauant(PageDto pgdto){
		ModelAndView mav = new ModelAndView();
		
		int totalRecord = managerService.restaurantCountProcess();
		
		if(totalRecord >= 1){
			if(pgdto.getCurrentPage() == 0){
				currentPage = 1;
			}else{
				currentPage = pgdto.getCurrentPage();
			}
			pgdto = new PageDto(currentPage, totalRecord);
			List<RestaurantDto> rList = managerService.restaurantList(pgdto);
			mav.addObject("rList", rList);
			mav.addObject("pgdto", pgdto);
		}
		mav.setViewName("manager/restaurant/restaurantBoard");
		return mav;
	}
	
	@RequestMapping(value="/placeInsert.do",method=RequestMethod.POST)
	public String placeInsert(PlaceImgDto pidto, PlaceDto pdto, HttpServletRequest request, HttpSession session){
		
		MultipartFile pf = pidto.getPfilename();
		MultipartFile pf2 = pidto.getPfilename2();
		MultipartFile pf3 = pidto.getPfilename3();
		MultipartFile pf4 = pidto.getPfilename4();
		
		if(!pf.isEmpty()){
			String fileName = pf.getOriginalFilename();
			UUID random = UUID.randomUUID();
		if(!pf2.isEmpty()){
			String fileName2 = pf2.getOriginalFilename();
			UUID random2 = UUID.randomUUID();
		if(!pf3.isEmpty()){
			String fileName3 = pf3.getOriginalFilename();
			UUID random3 = UUID.randomUUID();
		if(!pf4.isEmpty()){
			String fileName4 = pf4.getOriginalFilename();
			UUID random4 = UUID.randomUUID();
		
		String root = request.getSession().getServletContext().getRealPath("/");
		String saveDirectory = root + "images/place" + File.separator;
	
		//실제 서버경로에 이미지 저장폴더를 만들기 위한 선언
		File fe = new File(saveDirectory);
		
		if(!fe.exists())
			fe.mkdirs();
		
		File p1 = new File(saveDirectory,random+"_"+fileName);
		File p2 = new File(saveDirectory,random2+"_"+fileName2);
		File p3 = new File(saveDirectory,random3+"_"+fileName3);
		File p4 = new File(saveDirectory,random4+"_"+fileName4);
		
		try {
			FileCopyUtils.copy(pf.getInputStream(),new FileOutputStream(p1));
			FileCopyUtils.copy(pf2.getInputStream(),new FileOutputStream(p2));
			FileCopyUtils.copy(pf3.getInputStream(),new FileOutputStream(p3));
			FileCopyUtils.copy(pf4.getInputStream(),new FileOutputStream(p4));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		pidto.setP_img3(random4+"_"+fileName4);
		}
		pidto.setP_img2(random3+"_"+fileName3);
		}	
		pidto.setP_img1(random2+"_"+fileName2);
		}
		pidto.setP_thumbnail(random+"_"+fileName);
		}
		
		String mId = (String) session.getAttribute("mId");
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mId", mId);
		map.put("pdto", pdto);
		map.put("pidto", pidto);
		
		managerService.placeInsertProcess(map);
		return "redirect:/placeBoard.do";
	}
	
	@RequestMapping("/placeUpdateWrite.do")
	public ModelAndView placeUpdateWrite(int p_num){
		ModelAndView mav = new ModelAndView();
		mav.addObject("pdto",managerService.placeSelect(p_num));
		mav.setViewName("manager/place/placeUpdate");
		return mav;
	}
	
	@RequestMapping(value="/placeUpdate.do", method=RequestMethod.POST)
	public String placeUpdate(int p_num,PlaceDto pdto,PlaceImgDto pidto,HttpServletRequest request){
		
		//기존에 있는 파일명을 가져온다.
		PlaceImgDto pn = managerService.placeImg(p_num);
		
		//기존에 있는 파일명을 가져온다.
		String thumbnail = pn.getP_thumbnail();
		String img1 = pn.getP_img1();
		String img2 = pn.getP_img2();
		String img3 = pn.getP_img3();
		
		String root = request.getSession().getServletContext().getRealPath("/");
		String saveDirectory = root + "images/place" + File.separator;
		
		MultipartFile pf = pidto.getPfilename();
		MultipartFile pf2 = pidto.getPfilename2();
		MultipartFile pf3 = pidto.getPfilename3();
		MultipartFile pf4 = pidto.getPfilename4();
		
		if(!pf.isEmpty()){
			UUID random = UUID.randomUUID();
			if(thumbnail!=null){
				File fa = new File(saveDirectory,thumbnail);
				fa.delete();
			}
			
			String newFileName = pf.getOriginalFilename();
			pidto.setP_thumbnail(random+"_"+newFileName);
			
			File f1 = new File(saveDirectory,random+"_"+newFileName);
			
			try{
				FileCopyUtils.copy(pf.getInputStream(),new FileOutputStream(f1));
			}catch(Exception e){
				e.printStackTrace();
			}
		}
			
		if(!pf2.isEmpty()){
			UUID random = UUID.randomUUID();
			if(img1!=null){
				File fa2 = new File(saveDirectory,img1);
				fa2.delete();
			}
			
			String newFileName = pf2.getOriginalFilename();
			pidto.setP_img1(random+"_"+newFileName);
			
			File f2 = new File(saveDirectory,random+"_"+newFileName);
			
			try{
				FileCopyUtils.copy(pf2.getInputStream(),new FileOutputStream(f2));
			}catch(Exception e){
				e.printStackTrace();
			}
		}
			
		if(!pf3.isEmpty()){
			UUID random = UUID.randomUUID();
			if(img2!=null){
				File fa3 = new File(saveDirectory,img2);
				fa3.delete();
			}
			
			String newFileName = pf3.getOriginalFilename();
			pidto.setP_img2(random+"_"+newFileName);
			
			File f3 = new File(saveDirectory,random+"_"+newFileName);
			
			try{
				FileCopyUtils.copy(pf3.getInputStream(),new FileOutputStream(f3));
			}catch(Exception e){
				e.printStackTrace();
			}
		}
			
		if(!pf4.isEmpty()){
			UUID random = UUID.randomUUID();
			if(img3!=null){
				File fa3 = new File(saveDirectory,img3);
				fa3.delete();
			}
			
			String newFileName = pf4.getOriginalFilename();
			pidto.setP_img3(random+"_"+newFileName);
			
			File f4 = new File(saveDirectory,random+"_"+newFileName);
			
			try{
				FileCopyUtils.copy(pf4.getInputStream(),new FileOutputStream(f4));
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		HashMap<String,Object>map = new HashMap<String,Object>();
		map.put("pdto",pdto);
		map.put("pidto",pidto);
		
		managerService.placeUpdateProcess(map);
		
		return "redirect:/placeBoard.do";
	}

	@RequestMapping(value="/placeDelete.do",method=RequestMethod.GET)
	public String placeDel(int p_num,HttpServletRequest request){
		
		PlaceImgDto pn = managerService.placeImg(p_num);
		
		String thumbnail = pn.getP_thumbnail();
		String img1 = pn.getP_img1();
		String img2 = pn.getP_img2();
		String img3 = pn.getP_img3();
		
		String root = request.getSession().getServletContext().getRealPath("/");
		String saveDirectory = root + "images/place" + File.separator;
		
		if(thumbnail!=null){
			File fa = new File(saveDirectory,thumbnail);
			fa.delete();
		}
		if(img1!=null){
			File fa2 = new File(saveDirectory,img1);
			fa2.delete();
		}
		if(img2!=null){
			File fa3 = new File(saveDirectory,img2);
			fa3.delete();
		}
		if(img3!=null){
			File fa4 = new File(saveDirectory,img3);
			fa4.delete();
			
		}
		managerService.placeDel(p_num);
		
		return "redirect:/placeBoard.do";
	}	
	
	
	@RequestMapping(value="/festivalInsert.do",method=RequestMethod.POST)
	public String festivalFileInsert(FestivalImgDto fidto, FestivalDto fdto, HttpServletRequest request, HttpSession session){
		
		MultipartFile ff = fidto.getFilename();
		MultipartFile ff2 = fidto.getFilename2();
		MultipartFile ff3 = fidto.getFilename3();
		MultipartFile ff4 = fidto.getFilename4();
		
		if(!ff.isEmpty()){
			String fileName = ff.getOriginalFilename();
			UUID random = UUID.randomUUID();
		if(!ff2.isEmpty()){
			String fileName2 = ff2.getOriginalFilename();
			UUID random2 = UUID.randomUUID();
		if(!ff3.isEmpty()){
			String fileName3 = ff3.getOriginalFilename();
			UUID random3 = UUID.randomUUID();
		if(!ff4.isEmpty()){
			String fileName4 = ff4.getOriginalFilename();
			UUID random4 = UUID.randomUUID();
		
		String root = request.getSession().getServletContext().getRealPath("/");
		String saveDirectory = root + "images/festival" + File.separator;
		
		File fe = new File(saveDirectory);
		
		if(!fe.exists())
			fe.mkdirs();
		
		File f1 = new File(saveDirectory,random+"_"+fileName);
		File f2 = new File(saveDirectory,random2+"_"+fileName2);
		File f3 = new File(saveDirectory,random3+"_"+fileName3);
		File f4 = new File(saveDirectory,random4+"_"+fileName4);
		
		try {
			FileCopyUtils.copy(ff.getInputStream(),new FileOutputStream(f1));
			FileCopyUtils.copy(ff2.getInputStream(),new FileOutputStream(f2));
			FileCopyUtils.copy(ff3.getInputStream(),new FileOutputStream(f3));
			FileCopyUtils.copy(ff4.getInputStream(),new FileOutputStream(f4));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		fidto.setF_img3(random4+"_"+fileName4);
		}
		fidto.setF_img2(random3+"_"+fileName3);
		}	
		fidto.setF_img1(random2+"_"+fileName2);
		}
		fidto.setF_thumbnail(random+"_"+fileName);
		}
		
		String mId = (String)session.getAttribute("mId");
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mId", mId);
		map.put("fdto", fdto);
		map.put("fidto", fidto);
		
		managerService.festivalInsertProcess(map);
		
		return "redirect:/festivalBoard.do";
	}
	
	
	@RequestMapping("/festivalUpdateWrite.do")
	public ModelAndView festivalUpdateWrite(int f_num){
		ModelAndView mav = new ModelAndView();
		mav.addObject("fdto",managerService.festivalSelect(f_num));
		mav.setViewName("manager/festival/festivalUpdate");
		return mav;
	}
	
	@RequestMapping(value="/festivalUpdate.do", method=RequestMethod.POST)
	public String festivalUpdate(int f_num,FestivalDto fdto,FestivalImgDto fidto,HttpServletRequest request){
		
		//기존 파일명 리스트를 가져옴
		FestivalImgDto fn = managerService.festivalImg(f_num);
		
		//리스트로부터 기존 파일명을 뽑아냄
		String thumbnail = fn.getF_thumbnail();
		String img1 = fn.getF_img1();
		String img2 = fn.getF_img2();
		String img3 = fn.getF_img3();
		
		//실제 서버주소를 구함.
		String root = request.getSession().getServletContext().getRealPath("/");
		//실 서버에 이미지가 저장될 폴더위치를 지정.
		String saveDirectory = root + "images/festival" + File.separator;
		
		//새로 업로드한 파일을 가져옴.
		MultipartFile ff = fidto.getFilename();
		MultipartFile ff2 = fidto.getFilename2();
		MultipartFile ff3 = fidto.getFilename3();
		MultipartFile ff4 = fidto.getFilename4();
		
		//새로업로드한 파일이 없다면 파일처리를 안하고 그냥 넘어간다.
		if(!ff.isEmpty()){ //새로 업로드한 파일이 있다면
			UUID random = UUID.randomUUID(); //파일명 중복을 피하기 위해 랜덤번호를 생성하고
			if(thumbnail!=null){ //혹시 기존에 파일이 있다면, 새로운 파일로 업데이트 되어야 하니까
				File fa = new File(saveDirectory,thumbnail); //파일이 저장된 공간에 가서 기존 파일명을 찾아서 (삭제시킬 준비)
				fa.delete(); //삭제시킨다.
			}
			
			String newFileName = ff.getOriginalFilename(); //새로운 파일의 실제이름을 구한다.
			fidto.setF_thumbnail(random+"_"+newFileName); //그 이름을 랜덤번호_실제이름 으로 구성하여 setter에 세팅시킨다. (디비에 저장하기 위해)
			
			File f1 = new File(saveDirectory,random+"_"+newFileName); //파일이 저장되는 공간에 새로운 파일명을 저장시킬 준비를 한다.

			try{
				FileCopyUtils.copy(ff.getInputStream(),new FileOutputStream(f1)); //파일을 저장시킨다.
			}catch(Exception e){
				e.printStackTrace();
			}
		}
			
		if(!ff2.isEmpty()){
			UUID random = UUID.randomUUID();
			if(img1!=null){
				File fa2 = new File(saveDirectory,img1);
				fa2.delete();
			}
			
			String newFileName = ff2.getOriginalFilename();
			fidto.setF_img1(random+"_"+newFileName);
			
			File f2 = new File(saveDirectory,random+"_"+newFileName);

			try{
				FileCopyUtils.copy(ff2.getInputStream(),new FileOutputStream(f2));
			}catch(Exception e){
				e.printStackTrace();
			}
		}
			
		if(!ff3.isEmpty()){
			UUID random = UUID.randomUUID();
			if(img2!=null){
				File fa3 = new File(saveDirectory,img2);
				fa3.delete();
			}
			
			String newFileName = ff3.getOriginalFilename();
			fidto.setF_img2(random+"_"+newFileName);
			
			File f3 = new File(saveDirectory,random+"_"+newFileName);

			try{
				FileCopyUtils.copy(ff3.getInputStream(),new FileOutputStream(f3));
			}catch(Exception e){
				e.printStackTrace();
			}
		}
			
		if(!ff4.isEmpty()){
			UUID random = UUID.randomUUID();
			if(img3!=null){
				File fa3 = new File(saveDirectory,img3);
				fa3.delete();
			}
			
			String newFileName = ff4.getOriginalFilename();
			fidto.setF_img3(random+"_"+newFileName);
			
			File f4 = new File(saveDirectory,random+"_"+newFileName);
			
			try{
				FileCopyUtils.copy(ff4.getInputStream(),new FileOutputStream(f4));
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		HashMap<String,Object>map = new HashMap<String,Object>();
		map.put("fdto",fdto);
		map.put("fidto",fidto);
		managerService.festivalUpdateProcess(map);
		
		return "redirect:/festivalBoard.do";
	}
	
	@RequestMapping(value="/festivalDelete.do",method=RequestMethod.GET)
	public String festivalDel(int f_num,HttpServletRequest request){
		
		System.out.println(f_num);
		FestivalImgDto fn = managerService.festivalImg(f_num);
		
		String thumbnail = fn.getF_thumbnail();
		String img1 = fn.getF_img1();
		String img2 = fn.getF_img2();
		String img3 = fn.getF_img3();
		
		String root = request.getSession().getServletContext().getRealPath("/");
		String saveDirectory = root + "images/festival" + File.separator;
		
		if(thumbnail!=null){
			File fa = new File(saveDirectory,thumbnail);
			fa.delete();
		}
		if(img1!=null){
			File fa2 = new File(saveDirectory,img1);
			fa2.delete();
		}
		if(img2!=null){
			File fa3 = new File(saveDirectory,img2);
			fa3.delete();
		}
		if(img3!=null){
			File fa4 = new File(saveDirectory,img3);
			fa4.delete();
			
		}
		managerService.festivalDel(f_num);
		
		return "redirect:/festivalBoard.do";
	}
	
	@RequestMapping(value="/restaurantInsert.do",method=RequestMethod.POST)
	public String restaurantInsert(RestaurantImgDto ridto, RestaurantDto rdto, HttpServletRequest request, HttpSession session){
		
		MultipartFile rf = ridto.getRfilename();
		MultipartFile rf2 = ridto.getRfilename2();
		MultipartFile rf3 = ridto.getRfilename3();
		MultipartFile rf4 = ridto.getRfilename4();
		
		if(!rf.isEmpty()){
			String fileName = rf.getOriginalFilename();
			UUID random = UUID.randomUUID();
		if(!rf2.isEmpty()){
			String fileName2 = rf2.getOriginalFilename();
			UUID random2 = UUID.randomUUID();
		if(!rf3.isEmpty()){
			String fileName3 = rf3.getOriginalFilename();
			UUID random3 = UUID.randomUUID();
		if(!rf4.isEmpty()){
			String fileName4 = rf4.getOriginalFilename();
			UUID random4 = UUID.randomUUID();
		
		String root = request.getSession().getServletContext().getRealPath("/");
		String saveDirectory = root + "images/restaurant" + File.separator;
		
		File fe = new File(saveDirectory);
		
		if(!fe.exists())
			fe.mkdirs();
		
		File f1 = new File(saveDirectory,random+"_"+fileName);
		File f2 = new File(saveDirectory,random2+"_"+fileName2);
		File f3 = new File(saveDirectory,random3+"_"+fileName3);
		File f4 = new File(saveDirectory,random4+"_"+fileName4);
		
		try {
			FileCopyUtils.copy(rf.getInputStream(),new FileOutputStream(f1));
			FileCopyUtils.copy(rf2.getInputStream(),new FileOutputStream(f2));
			FileCopyUtils.copy(rf3.getInputStream(),new FileOutputStream(f3));
			FileCopyUtils.copy(rf4.getInputStream(),new FileOutputStream(f4));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		ridto.setR_img3(random4+"_"+fileName4);
		}
		ridto.setR_img2(random3+"_"+fileName3);
		}	
		ridto.setR_img1(random2+"_"+fileName2);
		}
		ridto.setR_thumbnail(random+"_"+fileName);
		}
		
		String mId = (String)session.getAttribute("mId");
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mId", mId);
		map.put("rdto", rdto);
		map.put("ridto", ridto);
		managerService.restaurantInsertProcess(map);
		
		return "redirect:/restaurantBoard.do";
	}
	
	@RequestMapping("/restaurantUpdateWrite.do")
	public ModelAndView restaurantUpdateWrite(int r_num){
		ModelAndView mav = new ModelAndView();
		mav.addObject("rdto",managerService.restaurantSelect(r_num));
		mav.setViewName("manager/restaurant/restaurantUpdate");
		return mav;
	}
	
	@RequestMapping(value="/restaurantUpdate.do", method=RequestMethod.POST)
	public String restaurantUpdate(int r_num,RestaurantDto rdto,RestaurantImgDto ridto,HttpServletRequest request){
		
		RestaurantImgDto rn = managerService.restaurantImg(r_num);
		
		String thumbnail = rn.getR_thumbnail();
		String img1 = rn.getR_img1();
		String img2 = rn.getR_img2();
		String img3 = rn.getR_img3();
		
		String root = request.getSession().getServletContext().getRealPath("/");
		String saveDirectory = root + "images/restaurant" + File.separator;
		
		MultipartFile rf = ridto.getRfilename();
		MultipartFile rf2 = ridto.getRfilename2();
		MultipartFile rf3 = ridto.getRfilename3();
		MultipartFile rf4 = ridto.getRfilename4();
		
		if(!rf.isEmpty()){
			UUID random = UUID.randomUUID();
			if(thumbnail!=null){
				File fa = new File(saveDirectory,thumbnail);
				fa.delete();
			}
			
			String newFileName = rf.getOriginalFilename();
			ridto.setR_thumbnail(random+"_"+newFileName);
			
			File f1 = new File(saveDirectory,random+"_"+newFileName);
			
			try{
				FileCopyUtils.copy(rf.getInputStream(),new FileOutputStream(f1));
			}catch(Exception e){
				e.printStackTrace();
			}
		}
				
		if(!rf2.isEmpty()){
			UUID random = UUID.randomUUID();
			if(img1!=null){
				File fa2 = new File(saveDirectory,img1);
				fa2.delete();
			}
			
			String newFileName = rf2.getOriginalFilename();
			ridto.setR_img1(random+"_"+newFileName);
			
			File f2 = new File(saveDirectory,random+"_"+newFileName);
			
			try{
				FileCopyUtils.copy(rf2.getInputStream(),new FileOutputStream(f2));
			}catch(Exception e){
				e.printStackTrace();
			}
		}
			
		if(!rf3.isEmpty()){
			UUID random = UUID.randomUUID();
			if(img2!=null){
				File fa3 = new File(saveDirectory,img2);
				fa3.delete();
			}
			
			String newFileName = rf3.getOriginalFilename();
			ridto.setR_img2(random+"_"+newFileName);
			
			File f3 = new File(saveDirectory,random+"_"+newFileName);
			
			try{
				FileCopyUtils.copy(rf3.getInputStream(),new FileOutputStream(f3));
			}catch(Exception e){
				e.printStackTrace();
			}
		}
			
		if(!rf4.isEmpty()){
			UUID random = UUID.randomUUID();
			if(img3!=null){
				File fa3 = new File(saveDirectory,img3);
				fa3.delete();
			}
			
			String newFileName = rf4.getOriginalFilename();
			ridto.setR_img3(random+"_"+newFileName);
		
			File f4 = new File(saveDirectory,random+"_"+newFileName);
			
			try{
				FileCopyUtils.copy(rf4.getInputStream(),new FileOutputStream(f4));
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		HashMap<String,Object>map = new HashMap<String,Object>();
		map.put("rdto",rdto);
		map.put("ridto",ridto);
		managerService.restaurantUpdateProcess(map);
		
		return "redirect:/restaurantBoard.do";
	}

	@RequestMapping(value="/restaurantDelete.do",method=RequestMethod.GET)
	public String restaurantDel(int r_num,HttpServletRequest request){
		
		RestaurantImgDto rn = managerService.restaurantImg(r_num);
		
		String thumbnail = rn.getR_thumbnail();
		String img1 = rn.getR_img1();
		String img2 = rn.getR_img2();
		String img3 = rn.getR_img3();
		
		String root = request.getSession().getServletContext().getRealPath("/");
		String saveDirectory = root + "images/restaurant" + File.separator;
		
		if(thumbnail!=null){
			File fa = new File(saveDirectory,thumbnail);
			fa.delete();
		}
		if(img1!=null){
			File fa2 = new File(saveDirectory,img1);
			fa2.delete();
		}
		if(img2!=null){
			File fa3 = new File(saveDirectory,img2);
			fa3.delete();
		}
		if(img3!=null){
			File fa4 = new File(saveDirectory,img3);
			fa4.delete();
			
		}
		managerService.restaurantDel(r_num);
		
		return "redirect:/restaurantBoard.do";
	}
	
	/* memberInfo List */
	@RequestMapping(value="/memberInfo.do")
	public ModelAndView memberInfo(PageDto pgdto){
		ModelAndView mav = new ModelAndView();
		
		int totalRecord = managerService.userCountProcess();
		
		if(totalRecord >= 1){
			if(pgdto.getCurrentPage() == 0){
				currentPage = 1;
			}else{
				currentPage = pgdto.getCurrentPage();
			}
			pgdto = new PageDto(currentPage, totalRecord);
			List<UserDto> uList = managerService.memberInfoProcess(pgdto);
			mav.addObject("uList", uList);
			mav.addObject("pgdto", pgdto);
		}
		mav.setViewName("manager/memberInfo");
		
		return mav;
	}
}













