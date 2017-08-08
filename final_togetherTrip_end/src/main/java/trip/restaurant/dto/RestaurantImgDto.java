package trip.restaurant.dto;

import org.springframework.web.multipart.MultipartFile;

public class RestaurantImgDto {
	private String r_thumbnail, r_img1, r_img2, r_img3;
	private MultipartFile rfilename, rfilename2, rfilename3, rfilename4;
	private int r_num;
	
	private RestaurantImgDto(){}

	public String getR_thumbnail() {
		return r_thumbnail;
	}

	public void setR_thumbnail(String r_thumbnail) {
		this.r_thumbnail = r_thumbnail;
	}

	public String getR_img1() {
		return r_img1;
	}

	public void setR_img1(String r_img1) {
		this.r_img1 = r_img1;
	}

	public String getR_img2() {
		return r_img2;
	}

	public void setR_img2(String r_img2) {
		this.r_img2 = r_img2;
	}

	public String getR_img3() {
		return r_img3;
	}

	public void setR_img3(String r_img3) {
		this.r_img3 = r_img3;
	}

	public MultipartFile getRfilename() {
		return rfilename;
	}

	public void setRfilename(MultipartFile rfilename) {
		this.rfilename = rfilename;
	}

	public MultipartFile getRfilename2() {
		return rfilename2;
	}

	public void setRfilename2(MultipartFile rfilename2) {
		this.rfilename2 = rfilename2;
	}

	public MultipartFile getRfilename3() {
		return rfilename3;
	}

	public void setRfilename3(MultipartFile rfilename3) {
		this.rfilename3 = rfilename3;
	}

	public MultipartFile getRfilename4() {
		return rfilename4;
	}

	public void setRfilename4(MultipartFile rfilename4) {
		this.rfilename4 = rfilename4;
	}

	public int getR_num() {
		return r_num;
	}

	public void setR_num(int r_num) {
		this.r_num = r_num;
	}

}
