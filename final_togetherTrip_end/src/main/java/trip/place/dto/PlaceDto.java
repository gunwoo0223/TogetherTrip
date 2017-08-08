package trip.place.dto;

import java.util.Date;
import java.util.List;

public class PlaceDto {
	private int p_num;
	private String p_title;
	private String p_loc;
	private String p_state;
	private String p_city;
	private String p_time;
	private String p_holiday;
	private String p_tel;
	private String p_contents;
	private Date p_reg_date;
	private int p_read_count;
	private String m_id;
	private List<PlaceImgDto> pImage;
	
	public int getP_num() {
		return p_num;
	}
	public void setP_num(int p_num) {
		this.p_num = p_num;
	}
	public String getP_title() {
		return p_title;
	}
	public void setP_title(String p_title) {
		this.p_title = p_title;
	}
	public String getP_loc() {
		return p_loc;
	}
	public void setP_loc(String p_loc) {
		this.p_loc = p_loc;
	}
	public String getP_state() {
		return p_state;
	}
	public void setP_state(String p_state) {
		this.p_state = p_state;
	}
	public String getP_city() {
		return p_city;
	}
	public void setP_city(String p_city) {
		this.p_city = p_city;
	}
	public String getP_time() {
		return p_time;
	}
	public void setP_time(String p_time) {
		this.p_time = p_time;
	}
	public String getP_holiday() {
		return p_holiday;
	}
	public void setP_holiday(String p_holiday) {
		this.p_holiday = p_holiday;
	}
	public String getP_tel() {
		return p_tel;
	}
	public void setP_tel(String p_tel) {
		this.p_tel = p_tel;
	}
	public String getP_contents() {
		return p_contents;
	}
	public void setP_contents(String p_contents) {
		this.p_contents = p_contents;
	}
	public Date getP_reg_date() {
		return p_reg_date;
	}
	public void setP_reg_date(Date p_reg_date) {
		this.p_reg_date = p_reg_date;
	}
	public int getP_read_count() {
		return p_read_count;
	}
	public void setP_read_count(int p_read_count) {
		this.p_read_count = p_read_count;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public List<PlaceImgDto> getpImage() {
		return pImage;
	}
	public void setpImage(List<PlaceImgDto> pImage) {
		this.pImage = pImage;
	}
	
	
}