package trip.festival.service;

import java.util.List;

import trip.festival.dto.FestivalDto;
import trip.festival.dto.FestivalImgDto;
import trip.festival.dto.GoodDto;
import trip.festival.dto.PageDto;

public interface FestivalService {
	public int countProcess();
	public List<FestivalDto> listProcess(PageDto pv);
	public FestivalDto contentProcess(int f_num);
	public FestivalImgDto imgListProcess(int f_num);
	public String mapProcess(int f_num);
	public int goodCheckProcess(GoodDto gdto);
	public int increaseFestivalGoodProcess(GoodDto gdto);
	public Integer goodCountProcess(GoodDto gdto);
}
