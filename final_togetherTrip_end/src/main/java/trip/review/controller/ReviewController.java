package trip.review.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import trip.review.dto.PageDto;
import trip.review.dto.ReplyDto;
import trip.review.dto.ReviewDto;
import trip.review.service.ReviewService;

@Controller
public class ReviewController {

	private ReviewService reviewService;
	private int currentPage; // 현재 페이지를 받기 위한 변수
	
	public ReviewController() {}
	
	public void setReviewService(ReviewService reviewService) {
		this.reviewService = reviewService;
	}
	
	//board에서 글쓰기 버튼눌렀을 때 여행후기 글쓰기폼으로 이동
	@RequestMapping(value="/reviewWriteForm.do", method=RequestMethod.GET)
	public String writeForm(){
		
		return "review/writeForm";
	}
	
	//작성된 글이 db에 들어가는 과정
	@RequestMapping(value="/reviewWriteProcess.do", method=RequestMethod.POST)
	public String writeProcess(HttpServletRequest request, ReviewDto rvdto){
		
		MultipartFile file = rvdto.getFilename();
		
		if(!file.isEmpty()){
			
			String fileName = file.getOriginalFilename();

			UUID random = UUID.randomUUID();
			
			//root경로를 받기위한 선언
			String root = request.getSession().getServletContext().getRealPath("/");
			//root경로에 개발자가 지정한 이미지 경로를 선언
			String saveDirectory = root+"images/review"+File.separator;
			
			//바로 위에서 만들었던 이미지 경로에 파일을 만들기 위한 선언
			File fe = new File(saveDirectory);
			
			//이미지 경로폴더가 없다면
			if(!fe.exists())
				fe.mkdirs(); //생성해라.
			
			//이미지 경로에 실제 파일(난수_파일명)을 업로드 하기위한 선언
			File ff = new File(saveDirectory, random+"_"+fileName);
			
			try{
				//파일복사
				FileCopyUtils.copy(file.getInputStream(), new FileOutputStream(ff));
			}catch (Exception e) {
				e.printStackTrace();
			}
			//db에 파일명을 저장하기 위해 dto에 파일명을 세팅
			rvdto.setRvImage(random+"_"+fileName);
		}
		
		reviewService.reviewWriteProcess(rvdto);
		
		return "redirect:/reviewBoard.do";
	}
	
	/*@RequestMapping(value="/reviewWriteProcess.do", method=RequestMethod.POST)
	public void writeProcess(HttpServletRequest request, ReviewDto rvdto){
		
		//1. 다중파일을 받기위한 선언
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		//2. 다중파일을 받음
		List<MultipartFile> files = multipartRequest.getFiles("filename");
		//3. 다중파일의 이름을 받기위한 선언
		List<String> names = new ArrayList<String>();
		
		//4. 첨부파일이 있다면
		if(!files.isEmpty()){
			//5. 다중파일의 이름을 받음
			for(int i=0;i<files.size();i++){
				names.add(files.get(i).getOriginalFilename());
			}
			
			//6. 실서버 경로를 받아온다.
			String root = request.getSession().getServletContext().getRealPath("/");
			//7. 실서버 경로에 이미지 저장경로 설정 (File.separator는 C:\\ 여기서 \\을 의미함)
			String saveDirectory = root+"images/review"+File.separator;
			
			//8. "실서버 이미지경로에 파일을 생성하기 위한 객체생성"
			File fe = new File(saveDirectory);
			//8-1. 폴더가 존재하지 않는다면 폴더생성
			if(!fe.exists())
				fe.mkdirs();
			
			//9. 이름 중복저장 방지 - 난수발생
			UUID random = UUID.randomUUID();
			
			//10. "실서버 이미지경로에 파일이름 앞에 난수_를 붙여 '난수_파일이름'을 저장할 객체를 생성"
			File ff = new File(saveDirectory, random+"_"+names);
			
			try{
				//11. file.getInputStrem()의 내용을 new FileOutputStream(ff)에 복사해둔다.
				for(int i=0;i<files.size();i++){
					FileCopyUtils.copy(files.get(i).getInputStream(), new FileOutputStream(ff));
				}
			}catch (Exception e) {
				e.printStackTrace();
			}
			rvdto.setRvImage(random+"_"+names);
		}
		
		reviewService.reviewWriteProcess(rvdto);
		
		System.out.println(names.get(0));
		System.out.println(rvdto.getRvTitle());
	}*/
	
	//여행후기 탭 눌렀을 때 게시판으로 이동
	@RequestMapping(value="/reviewBoard.do", method=RequestMethod.GET)
	public ModelAndView board(PageDto pgdto){
		ModelAndView mav = new ModelAndView();
		
		int totalRecord = reviewService.reviewCountProcess();
		
		if(totalRecord >= 1){
			if(pgdto.getCurrentPage() == 0){
				currentPage = 1;
			}else{
				currentPage = pgdto.getCurrentPage();
			}
			pgdto = new PageDto(currentPage, totalRecord);
			List<ReviewDto> rvList = reviewService.reviewListProcess(pgdto);
			mav.addObject("rvList", rvList);
			mav.addObject("pgdto", pgdto);
		}
		
		mav.setViewName("review/board");
		return mav;
	}
	
	//게시글 상세페이지 이동
	@RequestMapping(value="/reviewDetail.do", method=RequestMethod.GET)
	public ModelAndView detailForm(int rvNum){
		
		ModelAndView mav = new ModelAndView();
		ReviewDto rvdto = reviewService.reviewDetailProcess(rvNum);
		
		mav.addObject("rvdto", rvdto);
		
		mav.setViewName("review/detailForm");
		
		return mav;
	}
	
	//게시글 수정페이지 이동
	@RequestMapping(value="/reviewUpdateForm.do", method=RequestMethod.GET)
	public ModelAndView updateForm(int rvNum){
		
		ModelAndView mav = new ModelAndView();
		
		ReviewDto rvdto = reviewService.reviewDetailProcess(rvNum);
		
		mav.addObject("rvdto", rvdto);
		mav.setViewName("review/updateForm");
		
		return mav;
	}
	
	//게시물 수정
	@RequestMapping(value="/reviewUpdateProcess.do", method=RequestMethod.POST)
	public String updateProcess(ReviewDto rvdto, HttpServletRequest request){
		
		//기존 게시글에있는 파일명을 가져옴(있을 수 도 있고 없을 수 도 있다. 아직 모르는 상태)
		String fileName = reviewService.selectFileNameProcess(rvdto.getRvNum());
		//실제 서버경로를 찾음.
		String root = request.getSession().getServletContext().getRealPath("/");
		//실제 서버경로에 이미지가 저장될 폴더위치를 정한다.
		String saveDirectory = root+"images/review"+File.separator;
		
		MultipartFile file = rvdto.getFilename(); //새로 업로드한 파일

		if (!file.isEmpty()) {
			UUID random = UUID.randomUUID();
			if(fileName != null){ //기존 값이 있다면 
				File fe = new File(saveDirectory, fileName); //서버경로를 추적해서 그 파일을 찾아낸 후
				fe.delete(); //삭제한다.
			}
			
			String newFileName = file.getOriginalFilename(); //새로 업로드한 파일의 실제 이름을 추출한다.
			rvdto.setRvImage((random+"_"+newFileName)); //이름을 세팅시킨다.
			
			File ff = new File(saveDirectory, random+"_"+newFileName); //새로운 파일이름에 랜덤이름을 붙여 파일업로드 준비를 한다.
			
			try {
				FileCopyUtils.copy(file.getInputStream(), new FileOutputStream(ff)); //파일 업로드를 한다.
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		reviewService.reviewUpdateProcess(rvdto);
		
		return "redirect:/reviewDetail.do?rvNum="+rvdto.getRvNum();
	}
	
	//게시물 삭제
	@RequestMapping(value="/reviewDeleteProcess.do", method=RequestMethod.GET)
	public String deleteProcess(int rvNum, HttpServletRequest request){
		
		String fileName = reviewService.selectFileNameProcess(rvNum);
		String root = request.getSession().getServletContext().getRealPath("/");
		String saveDirectory = root+"images/review"+File.separator;
		
		//기존 첨부파일이 있으면
		if(fileName != null){
			File fe = new File(saveDirectory, fileName);
			fe.delete(); //실서버에 있는 이미지파일은 여기서 없애고.
		}
		
		//나머지 디비데이터는 여기서 없앤다.
		reviewService.reviewDeleteProcess(rvNum);
		
		return "redirect:/reviewBoard.do";
	}
	
	/* 여기서부터 댓글관련 코드 */
	
	//댓글 작성 후 댓글리스트 가져오기
	@RequestMapping(value="replyWriteProcess.do", method=RequestMethod.POST)
	public @ResponseBody List<ReplyDto> replyWriteProcess(ReplyDto rpdto){
		return reviewService.replyWriteProcess(rpdto);
	}
	
	//댓글 삭제 후 댓글리스트 가져오기
	@RequestMapping(value="replyDeleteProcess.do", method=RequestMethod.POST)
	public @ResponseBody List<ReplyDto> replyDeleteProcess(ReplyDto rpdto){
		return reviewService.replyDeleteProcess(rpdto);
	}
	
	//댓글 업데이트 후 댓글리스트 가져오기
	@RequestMapping(value="replyUpdateProcess.do", method=RequestMethod.POST)
	public @ResponseBody List<ReplyDto> replyUpdateProcess(ReplyDto rpdto){
		return null;
	}
}








