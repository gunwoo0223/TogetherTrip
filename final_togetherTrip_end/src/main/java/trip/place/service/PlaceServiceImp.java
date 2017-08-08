package trip.place.service;

import java.util.List;

import trip.place.dao.PlaceDao;
import trip.place.dto.GoodDto;
import trip.place.dto.PageDto;
import trip.place.dto.PlaceDto;
import trip.place.dto.PlaceImgDto;

public class PlaceServiceImp implements PlaceService{

	private PlaceDao placeDao;
	
	public PlaceServiceImp() {}
	
	public void setPlaceDao(PlaceDao placeDao) {
		this.placeDao = placeDao;
	}


	@Override
	public List<PlaceDto> listProcess(PageDto pv) {
		return placeDao.listMethod(pv);
	}

	@Override
	public int cntProcess() {
		return placeDao.countMethod();
	}

	@Override
	public List<PlaceDto> detailProcess(int p_num) {
		placeDao.readcountMethod(p_num);
		return placeDao.detailMethod(p_num);
	}
	
	@Override
	public String mapProcess(int p_num){
		return placeDao.mapMethod(p_num);
	}

	@Override
	public int insertGoodProcess(GoodDto gdto) {
		placeDao.insertGoodMethod(gdto);
		return placeDao.selectGoodMethod(gdto);
	}

	@Override
	public Integer selectGoodProcess(GoodDto gdto) {
		return placeDao.selectGoodMethod(gdto);
	}

	@Override
	public int checkGoodProcess(GoodDto gdto) {
		return placeDao.checkGood(gdto);
	}

}
