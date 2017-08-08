package trip.review.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import trip.review.dto.PageDto;
import trip.review.dto.ReplyDto;
import trip.review.dto.ReviewDto;

public class ReviewDaoImp implements ReviewDao{

	private SqlSessionTemplate sqlSession;
	
	public ReviewDaoImp() {}
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	//게시글 총 개수
	@Override
	public int reviewCount() {
		return sqlSession.selectOne("review.reviewCount");
	}
	
	//게시글 전체 리스트가져오기
	@Override
	public List<ReviewDto> reviewList(PageDto pgdto) {
		return sqlSession.selectList("review.reviewList", pgdto);
	}
	
	//게시글 상세정보 가져오기(상세보기, 수정하기위한 정보)
	@Override
	public ReviewDto reviewDetail(int rvNum) {
		return sqlSession.selectOne("review.reviewDetail", rvNum);
	}
	
	@Override
	public void increaseReadCount(int rvNum) {
		sqlSession.update("review.increaseReadCount", rvNum);
	}

	//게시글 작성
	@Override
	public void reviewWrite(ReviewDto rvdto) {
		sqlSession.insert("review.reviewWrite", rvdto);
	}
	
	//게시글 수정
	@Override
	public void reviewUpdate(ReviewDto rvdto) {
		sqlSession.update("review.reviewUpdate", rvdto);
	}

	//업로드한 파일명 가져오기
	@Override
	public String selectFileName(int rvNum) {
		return sqlSession.selectOne("review.selectFileName", rvNum);
	}
	
	//게시글 삭제
	@Override
	public void reviewDelete(int rvNum) {
		sqlSession.delete("review.reviewDelete", rvNum);
	}

	/* 여기서부터 댓글관련 */
	
	//댓글 작성
	@Override
	public void replyWrite(ReplyDto rpdto) {
		sqlSession.insert("review.replyWrite", rpdto);
	}

	//댓글 리스트가져오기
	@Override
	public List<ReplyDto> replyList(int rvNum) {
		return sqlSession.selectList("review.replyList", rvNum);
	}

	//댓글 삭제
	@Override
	public void replyDelete(ReplyDto rpdto) {
		sqlSession.delete("review.replyDelete", rpdto);
	}

}
