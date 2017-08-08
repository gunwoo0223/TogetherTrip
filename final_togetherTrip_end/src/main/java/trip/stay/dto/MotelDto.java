package trip.stay.dto;

public class MotelDto {

	private String m_type;
	private int m_price;
	private String m_image;
	
	public MotelDto() {

	}
	
	public String getM_image() {
		return m_image;
	}
	
	public void setM_image(String m_image) {
		this.m_image = m_image;
	}
	

	public String getM_type() {
		return m_type;
	}

	public void setM_type(String m_type) {
		this.m_type = m_type;
	}

	public int getM_price() {
		return m_price;
	}

	public void setM_price(int m_price) {
		this.m_price = m_price;
	}
	
	
}

