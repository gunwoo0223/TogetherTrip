package trip.restaurant.dto;

import java.util.Date;
import java.util.List;

public class RestaurantDto {

	private int r_num;
	private String r_title;
	private String r_loc;
	private String r_state;
	private String r_city;
	private String r_time;
	private String r_holiday;
	private String r_tel;
	private String r_contents;
	private Date r_reg_date;
	private int r_read_count;
	private String r_menu;
	private List<RestaurantImgDto> rImage;
	private String m_id;
	
	public int getR_num() {
		return r_num;
	}
	public void setR_num(int r_num) {
		this.r_num = r_num;
	}
	public String getR_title() {
		return r_title;
	}
	public void setR_title(String r_title) {
		this.r_title = r_title;
	}
	public String getR_loc() {
		return r_loc;
	}
	public void setR_loc(String r_loc) {
		this.r_loc = r_loc;
	}
	public String getR_state() {
		return r_state;
	}
	public void setR_state(String r_state) {
		this.r_state = r_state;
	}
	public String getR_city() {
		return r_city;
	}
	public void setR_city(String r_city) {
		this.r_city = r_city;
	}
	public String getR_time() {
		return r_time;
	}
	public void setR_time(String r_time) {
		this.r_time = r_time;
	}
	public String getR_holiday() {
		return r_holiday;
	}
	public void setR_holiday(String r_holiday) {
		this.r_holiday = r_holiday;
	}
	public String getR_tel() {
		return r_tel;
	}
	public void setR_tel(String r_tel) {
		this.r_tel = r_tel;
	}
	public String getR_contents() {
		return r_contents;
	}
	public void setR_contents(String r_contents) {
		this.r_contents = r_contents;
	}
	public Date getR_reg_date() {
		return r_reg_date;
	}
	public void setR_reg_date(Date r_reg_date) {
		this.r_reg_date = r_reg_date;
	}
	public int getR_read_count() {
		return r_read_count;
	}
	public void setR_read_count(int r_read_count) {
		this.r_read_count = r_read_count;
	}
	public String getR_menu() {
		return r_menu;
	}
	public void setR_menu(String r_menu) {
		this.r_menu = r_menu;
	}
	public List<RestaurantImgDto> getrImage() {
		return rImage;
	}
	public void setrImage(List<RestaurantImgDto> rImage) {
		this.rImage = rImage;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	
}
