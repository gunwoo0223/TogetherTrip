package trip.review.dto;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class ReviewDto {

	private int rvNum;
	private String rvTitle;
	private String rvContents;
	private Timestamp rvRegDate;
	private int rvReadCount;
	private String rvImage;
	private String rvWriter;
	private String uId;
	private String mId;
	private MultipartFile filename;
	private List<ReplyDto> rpList;
	
	public int getRvNum() {
		return rvNum;
	}
	public void setRvNum(int rvNum) {
		this.rvNum = rvNum;
	}
	public String getRvTitle() {
		return rvTitle;
	}
	public void setRvTitle(String rvTitle) {
		this.rvTitle = rvTitle;
	}
	public String getRvContents() {
		return rvContents;
	}
	public void setRvContents(String rvContents) {
		this.rvContents = rvContents;
	}
	public Timestamp getRvRegDate() {
		return rvRegDate;
	}
	public void setRvRegDate(Timestamp rvRegDate) {
		this.rvRegDate = rvRegDate;
	}
	public int getRvReadCount() {
		return rvReadCount;
	}
	public void setRvReadCount(int rvReadCount) {
		this.rvReadCount = rvReadCount;
	}
	public void setRvImage(String rvImage) {
		this.rvImage = rvImage;
	}
	public String getRvImage() {
		return rvImage;
	}
	public String getRvWriter() {
		return rvWriter;
	}
	public void setRvWriter(String rvWriter) {
		this.rvWriter = rvWriter;
	}
	public String getuId() {
		return uId;
	}
	public void setuId(String uId) {
		this.uId = uId;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public void setFilename(MultipartFile filename) {
		this.filename = filename;
	}
	public MultipartFile getFilename() {
		return filename;
	}
	public void setRpList(List<ReplyDto> rpList) {
		this.rpList = rpList;
	}
	public List<ReplyDto> getRpList(){
		return rpList;
	}

}
