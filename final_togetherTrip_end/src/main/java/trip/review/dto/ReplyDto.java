package trip.review.dto;

import java.sql.Timestamp;

public class ReplyDto {

	private int rpNum;
	private String rpContents;
	private Timestamp rpRegDate;
	private String rpWriter;
	private int rvNum;
	private String uId;
	private String mId;
	
	public int getRpNum() {
		return rpNum;
	}
	public void setRpNum(int rpNum) {
		this.rpNum = rpNum;
	}
	public String getRpContents() {
		return rpContents;
	}
	public void setRpContents(String rpContents) {
		this.rpContents = rpContents;
	}
	public Timestamp getRpRegDate() {
		return rpRegDate;
	}
	public void setRpRegDate(Timestamp rpRegDate) {
		this.rpRegDate = rpRegDate;
	}
	public String getRpWriter() {
		return rpWriter;
	}
	public void setRpWriter(String rpWriter) {
		this.rpWriter = rpWriter;
	}
	public int getRvNum() {
		return rvNum;
	}
	public void setRvNum(int rvNum) {
		this.rvNum = rvNum;
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
}
