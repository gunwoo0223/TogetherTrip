package trip.place.dto;

import org.springframework.web.multipart.MultipartFile;

public class PlaceImgDto {
	private String p_thumbnail, p_img1, p_img2, p_img3;
	private MultipartFile pfilename, pfilename2, pfilename3, pfilename4;
	private int p_num;
	
	public PlaceImgDto(){}

	public int getP_num() {
		return p_num;
	}
	public void setP_num(int p_num) {
		this.p_num = p_num;
	}
	public void setPfilename(MultipartFile pfilename) {
		this.pfilename = pfilename;
	}
	public void setPfilename2(MultipartFile pfilename2) {
		this.pfilename2 = pfilename2;
	}
	public void setPfilename3(MultipartFile pfilename3) {
		this.pfilename3 = pfilename3;
	}
	public void setPfilename4(MultipartFile pfilename4) {
		this.pfilename4 = pfilename4;
	}
	public MultipartFile getPfilename() {
		return pfilename;
	}
	public MultipartFile getPfilename2() {
		return pfilename2;
	}
	public MultipartFile getPfilename3() {
		return pfilename3;
	}
	
	public MultipartFile getPfilename4() {
		return pfilename4;
	}
	public String getP_thumbnail() {
		return p_thumbnail;
	}

	public void setP_thumbnail(String p_thumbnail) {
		this.p_thumbnail = p_thumbnail;
	}

	public String getP_img1() {
		return p_img1;
	}

	public void setP_img1(String p_img1) {
		this.p_img1 = p_img1;
	}

	public String getP_img2() {
		return p_img2;
	}

	public void setP_img2(String p_img2) {
		this.p_img2 = p_img2;
	}

	public String getP_img3() {
		return p_img3;
	}

	public void setP_img3(String p_img3) {
		this.p_img3 = p_img3;
	}

	
	
}
