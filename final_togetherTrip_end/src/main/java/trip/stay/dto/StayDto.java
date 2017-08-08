package trip.stay.dto;

import java.util.Date;
import java.util.List;

public class StayDto {

	private int s_num;
	private String s_title;
	private String s_loc;
	private String s_state;
	private String s_city;
	private String s_tel;
	private String s_contents;
	private Date s_reg_date;
	private int s_read_count;
	private String s_type;
	
	private List<StayImgDto> sImage;
	private List<HotelDto> hotel;
	private List<MotelDto> motel;
	private List<PensionDto> pension;
	
	public int getS_num() {
		return s_num;
	}
	public void setS_num(int s_num) {
		this.s_num = s_num;
	}
	public String getS_title() {
		return s_title;
	}
	public void setS_title(String s_title) {
		this.s_title = s_title;
	}
	public String getS_loc() {
		return s_loc;
	}
	public void setS_loc(String s_loc) {
		this.s_loc = s_loc;
	}
	public String getS_state() {
		return s_state;
	}
	public void setS_state(String s_state) {
		this.s_state = s_state;
	}
	public String getS_city() {
		return s_city;
	}
	public void setS_city(String s_city) {
		this.s_city = s_city;
	}
	public String getS_tel() {
		return s_tel;
	}
	public void setS_tel(String s_tel) {
		this.s_tel = s_tel;
	}
	public String getS_contents() {
		return s_contents;
	}
	public void setS_contents(String s_contents) {
		this.s_contents = s_contents;
	}
	public Date getS_reg_date() {
		return s_reg_date;
	}
	public void setS_reg_date(Date s_reg_date) {
		this.s_reg_date = s_reg_date;
	}
	public int getS_read_count() {
		return s_read_count;
	}
	public void setS_read_count(int s_read_count) {
		this.s_read_count = s_read_count;
	}
	public String getS_type() {
		return s_type;
	}
	public void setS_type(String s_type) {
		this.s_type = s_type;
	}
	public List<StayImgDto> getsImage() {
		return sImage;
	}
	public void setsImage(List<StayImgDto> sImage) {
		this.sImage = sImage;
	}
	public List<HotelDto> getHotel() {
		return hotel;
	}
	public void setHotel(List<HotelDto> hotel) {
		this.hotel = hotel;
	}
	public List<MotelDto> getMotel() {
		return motel;
	}
	public void setMotel(List<MotelDto> motel) {
		this.motel = motel;
	}
	public List<PensionDto> getPension() {
		return pension;
	}
	public void setPension(List<PensionDto> pension) {
		this.pension = pension;
	}
	
}
