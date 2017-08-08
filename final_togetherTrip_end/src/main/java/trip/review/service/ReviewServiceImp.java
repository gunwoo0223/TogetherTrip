package trip.review.service;

import java.util.List;

import trip.review.dao.ReviewDao;
import trip.review.dto.PageDto;
import trip.review.dto.ReplyDto;
import trip.review.dto.ReviewDto;

public class ReviewServiceImp implements ReviewService{

	private ReviewDao reviewDao;
	
	public ReviewServiceImp() {}
	
	public void setReviewDao(ReviewDao reviewDao) {
		this.reviewDao = reviewDao;
	}

	@Override
	public int reviewCountProcess() {
		return reviewDao.reviewCount();
	}
	
	@Override
	public List<ReviewDto> reviewListProcess(PageDto pgdto) {
		return reviewDao.reviewList(pgdto);
	}
	
	@Override
	public ReviewDto reviewDetailProcess(int rvNum) {
		reviewDao.increaseReadCount(rvNum);
		return reviewDao.reviewDetail(rvNum);
	}
	
	@Override
	public void reviewWriteProcess(ReviewDto rvdto) {
		reviewDao.reviewWrite(rvdto);
	}
	
	@Override
	public void reviewUpdateProcess(ReviewDto rvdto) {
		reviewDao.reviewUpdate(rvdto);
	}
	
	@Override
	public String selectFileNameProcess(int rvNum) {
		return reviewDao.selectFileName(rvNum);
	}

	@Override
	public void reviewDeleteProcess(int rvNum) {
		reviewDao.reviewDelete(rvNum);
	}
	
	/* 여기서부터 댓글관련 코드 */

	@Override
	public List<ReplyDto> replyWriteProcess(ReplyDto rpdto) {
		reviewDao.replyWrite(rpdto);
		return reviewDao.replyList(rpdto.getRvNum());
	}

	@Override
	public List<ReplyDto> replyDeleteProcess(ReplyDto rpdto) {
		reviewDao.replyDelete(rpdto);
		return reviewDao.replyList(rpdto.getRvNum());
	}

}








