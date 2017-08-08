package trip.place.dao;

import java.util.List;

import trip.place.dto.GoodDto;
import trip.place.dto.PageDto;
import trip.place.dto.PlaceDto;
import trip.place.dto.PlaceImgDto;

public interface PlaceDao {
	
	public List<PlaceDto> listMethod(PageDto pv);
	
	public int countMethod();
	
	public List<PlaceDto> detailMethod(int p_num);
	public String mapMethod(int p_num);
	public void readcountMethod(int p_num);
	
	public void insertGoodMethod(GoodDto gdto);
	public Integer selectGoodMethod(GoodDto gdto);
	
	public int checkGood(GoodDto gdto);

}
