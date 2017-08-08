package trip.stay.service;

import java.util.List;

import trip.stay.dto.PageDto;
import trip.stay.dto.ReserveDto;
import trip.stay.dto.StayDto;
import trip.stay.dto.StayImgDto;

public interface StayService {

	
	public StayDto StayInfoProcess(int s_num);
	
	public StayImgDto StayImgInfoProcess(int s_num);
	
	public List<StayDto> StayInfo2Process(int s_num);
	
	public int countProcess();
	
	public List<StayDto> listProcess(PageDto pv);
	//public StayImgDTO ImgProcess();
	
	public StayDto hotelInfoProcess(int s_num);
	
	public StayDto motelInfoProcess(int s_num);
	
	public StayDto pensionInfoProcess(int s_num);
	
	public int stay_cntProcess();
	
	//숙소페이지 마지막 레코드값 받아온다.
	public int lastRecordProcess();
	
	//예약
	public void reserveProcess(ReserveDto dto);
	
	//지도
	public String mapProcess(int s_num);
	
}
