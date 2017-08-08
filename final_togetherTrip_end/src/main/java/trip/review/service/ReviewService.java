package trip.review.service;

import java.util.List;

import trip.review.dto.PageDto;
import trip.review.dto.ReplyDto;
import trip.review.dto.ReviewDto;

public interface ReviewService {

	public int reviewCountProcess();
	
	public List<ReviewDto> reviewListProcess(PageDto pgdto);
	
	public ReviewDto reviewDetailProcess(int rvNum);
	
	public void reviewWriteProcess(ReviewDto rvdto);
	
	public void reviewUpdateProcess(ReviewDto rvdto);
	
	public String selectFileNameProcess(int rvNum);
	
	public void reviewDeleteProcess(int rvNum);
	
	public List<ReplyDto> replyWriteProcess(ReplyDto rpdto);
	
	public List<ReplyDto> replyDeleteProcess(ReplyDto rpdto);
	
}










