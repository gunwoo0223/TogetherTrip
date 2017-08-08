package trip.stay.service;

import java.util.List;

import trip.stay.dao.StayDao;
import trip.stay.dto.PageDto;
import trip.stay.dto.ReserveDto;
import trip.stay.dto.StayDto;
import trip.stay.dto.StayImgDto;

public class StayServiceImp implements StayService{

	private StayDao stayDao;
	
	public StayServiceImp() {}
	
	public void setStayDao(StayDao stayDao) {
		this.stayDao = stayDao;
	}

	@Override
	public int countProcess() {
		return stayDao.countMethod();
	}

	@Override
	public List<StayDto> listProcess(PageDto pv) {
		return stayDao.listMethod(pv);
	}

	@Override
	public StayDto StayInfoProcess(int s_num) {
		stayDao.readCountMethod(s_num);
		return stayDao.stayInfoMethod(s_num);
	}
	
	@Override
	public StayImgDto StayImgInfoProcess(int s_num) {
		return stayDao.stayImgInfoMethod(s_num);
	}

	@Override
	public List<StayDto> StayInfo2Process(int s_num) {
		stayDao.readCountMethod(s_num);
		return stayDao.stayInfo2Method(s_num);
	}

	@Override
	public StayDto hotelInfoProcess(int s_num) {
		return stayDao.hotelInfoMethod(s_num);
	}

	@Override
	public int stay_cntProcess() {
		return stayDao.stay_cntMethod();
	}

	@Override
	public int lastRecordProcess() {
		return stayDao.lastRecordMethod();
	}

	@Override
	public void reserveProcess(ReserveDto dto) {
		stayDao.reserveMethod(dto);
	}

	@Override
	public String mapProcess(int s_num) {
		return stayDao.mapMethod(s_num);
	}

	@Override
	public StayDto motelInfoProcess(int s_num) {
		return stayDao.motelInfoMethod(s_num);
	}

	@Override
	public StayDto pensionInfoProcess(int s_num) {
		return stayDao.pensionInfoMethod(s_num);
	}

}
