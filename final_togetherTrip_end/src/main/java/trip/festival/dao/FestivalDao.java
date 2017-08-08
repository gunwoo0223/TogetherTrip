package trip.festival.dao;

import java.util.List;

import trip.festival.dto.FestivalDto;
import trip.festival.dto.FestivalImgDto;
import trip.festival.dto.GoodDto;
import trip.festival.dto.PageDto;

public interface FestivalDao {
	public List<FestivalDto> list(PageDto pv);
	public int count();
	public FestivalDto content(int f_num);
	public void updateReadCount(int f_num);
	public FestivalImgDto imgList(int f_num);
	public String mapMethod(int f_num);
	public int goodCheck(GoodDto gdto);
	public Integer goodCount(GoodDto gdto);
	public void increaseFestivalGood(GoodDto gdto);
}
