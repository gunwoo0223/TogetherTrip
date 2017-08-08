package trip.stay.dto;

public class PensionDto {

	private String p_type;
	private int p_price;
	private String p_image;
	
	public PensionDto() {

	}

	public String getP_image() {
		return p_image;
	}
	
	public void setP_image(String p_image) {
		this.p_image = p_image;
	}
	
	
	public String getP_type() {
		return p_type;
	}

	public void setP_type(String p_type) {
		this.p_type = p_type;
	}

	public int getP_price() {
		return p_price;
	}

	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	
	
}
