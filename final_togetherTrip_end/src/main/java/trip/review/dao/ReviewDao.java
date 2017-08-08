package trip.review.dao;

import java.util.List;

import trip.review.dto.PageDto;
import trip.review.dto.ReplyDto;
import trip.review.dto.ReviewDto;

public interface ReviewDao {

	public int reviewCount();
	
	public List<ReviewDto> reviewList(PageDto pgdto);
	
	public ReviewDto reviewDetail(int rvNum);
	
	public void increaseReadCount(int rvNum);
	
	public void reviewWrite(ReviewDto rvdto);
	
	public void reviewUpdate(ReviewDto rvdto);
	
	public String selectFileName(int rvNum);
	
	public void reviewDelete(int rvNum);
	
	public void replyWrite(ReplyDto rpdto);
	
	public List<ReplyDto> replyList(int rvNum);
	
	public void replyDelete(ReplyDto rpdto);
	
}








