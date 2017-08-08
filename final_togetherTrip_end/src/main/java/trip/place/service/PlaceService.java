package trip.place.service;

import java.util.List;

import trip.place.dto.GoodDto;
import trip.place.dto.PageDto;
import trip.place.dto.PlaceDto;
import trip.place.dto.PlaceImgDto;

public interface PlaceService {

	public List<PlaceDto> listProcess(PageDto pv);
	
	public int cntProcess();

	public List<PlaceDto> detailProcess(int p_num);
	public String mapProcess(int p_num);
	
	public int insertGoodProcess(GoodDto gdto);
	public Integer selectGoodProcess(GoodDto gdto);
	
	public int checkGoodProcess(GoodDto gdto);
}










