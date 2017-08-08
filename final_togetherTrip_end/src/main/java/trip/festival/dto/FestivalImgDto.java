package trip.festival.dto;

import org.springframework.web.multipart.MultipartFile;

public class FestivalImgDto {
	private String f_thumbnail, f_img1, f_img2, f_img3;
	private MultipartFile filename, filename2, filename3, filename4;
	private int f_num;
	
	public void setF_num(int f_num) {
		this.f_num = f_num;
	}
	public int getF_num() {
		return f_num;
	}
	public void setFilename2(MultipartFile filename2) {
		this.filename2 = filename2;
	}
	public void setFilename3(MultipartFile filename3) {
		this.filename3 = filename3;
	}
	public void setFilename4(MultipartFile filename4) {
		this.filename4 = filename4;
	}
	public MultipartFile getFilename2() {
		return filename2;
	}
	public MultipartFile getFilename3() {
		return filename3;
	}
	public MultipartFile getFilename4() {
		return filename4;
	}
	public MultipartFile getFilename() {
		return filename;
	}
	public void setFilename(MultipartFile filename) {
		this.filename = filename;
	}
	public String getF_thumbnail() {
		return f_thumbnail;
	}
	public String getF_img1() {
		return f_img1;
	}
	public String getF_img2() {
		return f_img2;
	}
	public String getF_img3() {
		return f_img3;
	}
	
	/*public Number getF_num() {
		return f_num;
	}*/
	public void setF_thumbnail(String f_thumbnail) {
		this.f_thumbnail = f_thumbnail;
	}
	public void setF_img1(String f_img1) {
		this.f_img1 = f_img1;
	}
	public void setF_img2(String f_img2) {
		this.f_img2 = f_img2;
	}
	public void setF_img3(String f_img3) {
		this.f_img3 = f_img3;
	}
	/*public void setF_num(Number f_num) {
		this.f_num = f_num;
	}*/
	
}
