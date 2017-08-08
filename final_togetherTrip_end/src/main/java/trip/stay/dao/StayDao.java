package trip.stay.dao;

import java.util.List;

import trip.stay.dto.PageDto;
import trip.stay.dto.ReserveDto;
import trip.stay.dto.StayDto;
import trip.stay.dto.StayImgDto;

public interface StayDao {

	
	public StayDto stayInfoMethod(int s_num);
	
	public StayImgDto stayImgInfoMethod(int s_num);
	
	public List<StayDto> stayInfo2Method(int s_num);
	
	public int countMethod();
	
	public List<StayDto> listMethod(PageDto pv);
	//public StayImgDTO imgMethod();
	
	public StayDto hotelInfoMethod(int s_num);
	
	public StayDto motelInfoMethod(int s_num);
	
	public StayDto pensionInfoMethod(int s_num);
	
	//숙박업소 총 갯수
	public int stay_cntMethod();
	
	//조회수 증가
	public void readCountMethod(int s_num);
	
	//숙소페이지의 마지막 레코드값을 받아온다.
	public int lastRecordMethod();
	
	//예약하기
	public void reserveMethod(ReserveDto dto);
	
	public String mapMethod(int s_num);
	
	// 종아요
}
