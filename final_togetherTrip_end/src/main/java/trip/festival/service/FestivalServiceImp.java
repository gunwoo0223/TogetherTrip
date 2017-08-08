package trip.festival.service;

import java.util.List;

import trip.festival.dao.FestivalDao;
import trip.festival.dto.FestivalDto;
import trip.festival.dto.FestivalImgDto;
import trip.festival.dto.GoodDto;
import trip.festival.dto.PageDto;

public class FestivalServiceImp implements FestivalService{

	private FestivalDao festivalDao;
	
	public FestivalServiceImp() {}
	
	public void setFestivalDao(FestivalDao festivalDao) {
		this.festivalDao = festivalDao;
	}

	@Override
	public int countProcess() {
		return festivalDao.count();
	}

	@Override
	public List<FestivalDto> listProcess(PageDto pv) {
		return festivalDao.list(pv);
	}

	@Override
	public FestivalDto contentProcess(int f_num) {
		festivalDao.updateReadCount(f_num);
		return festivalDao.content(f_num);
	}

	@Override
	public FestivalImgDto imgListProcess(int f_num) {
		return festivalDao.imgList(f_num);
	}

	@Override
	public String mapProcess(int f_num) {
		return festivalDao.mapMethod(f_num);
	}

	@Override
	public int goodCheckProcess(GoodDto gdto) {
		return festivalDao.goodCheck(gdto);
	}

	@Override
	public int increaseFestivalGoodProcess(GoodDto gdto) {
		festivalDao.increaseFestivalGood(gdto);
		return festivalDao.goodCount(gdto);
	}

	@Override
	public Integer goodCountProcess(GoodDto gdto) {
		return festivalDao.goodCount(gdto);
	}
	
}
