package trip.festival.dto;

import java.sql.Timestamp;
import java.util.List;

public class FestivalDto {
	private int f_num;
	private String f_title;
	private String f_loc;
	private String f_state;
	private String f_city;
	private String f_time;
	private String f_contents;
	private String f_tel;
	private Timestamp f_reg_date;
	private int f_read_count;
	private List<FestivalImgDto> fImage;
	private String m_id;
	
	public int getF_num() {
		return f_num;
	}
	public void setF_num(int f_num) {
		this.f_num = f_num;
	}
	public String getF_title() {
		return f_title;
	}
	public void setF_title(String f_title) {
		this.f_title = f_title;
	}
	public String getF_loc() {
		return f_loc;
	}
	public void setF_loc(String f_loc) {
		this.f_loc = f_loc;
	}
	public String getF_state() {
		return f_state;
	}
	public void setF_state(String f_state) {
		this.f_state = f_state;
	}
	public String getF_city() {
		return f_city;
	}
	public void setF_city(String f_city) {
		this.f_city = f_city;
	}
	public String getF_time() {
		return f_time;
	}
	public void setF_time(String f_time) {
		this.f_time = f_time;
	}
	public String getF_contents() {
		return f_contents;
	}
	public void setF_contents(String f_contents) {
		this.f_contents = f_contents;
	}
	public String getF_tel() {
		return f_tel;
	}
	public void setF_tel(String f_tel) {
		this.f_tel = f_tel;
	}
	public Timestamp getF_reg_date() {
		return f_reg_date;
	}
	public void setF_reg_date(Timestamp f_reg_date) {
		this.f_reg_date = f_reg_date;
	}
	public int getF_read_count() {
		return f_read_count;
	}
	public void setF_read_count(int f_read_count) {
		this.f_read_count = f_read_count;
	}
	public List<FestivalImgDto> getfImage() {
		return fImage;
	}
	public void setfImage(List<FestivalImgDto> fImage) {
		this.fImage = fImage;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	

}
