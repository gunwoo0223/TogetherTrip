package trip.user.dto;

//명소에 관한 관심정보를 가져오기 위한 Object
public class InterestedPlaceDto {
	
	private String p_thumbnail;
	private String p_title;
	private String p_loc;
	private String p_tel;
	private int p_num;
	private int g_num;
	
	public String getP_thumbnail() {
		return p_thumbnail;
	}
	public void setP_thumbnail(String p_thumbnail) {
		this.p_thumbnail = p_thumbnail;
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
	public String getP_tel() {
		return p_tel;
	}
	public void setP_tel(String p_tel) {
		this.p_tel = p_tel;
	}
	public int getP_num() {
		return p_num;
	}
	public void setP_num(int p_num) {
		this.p_num = p_num;
	}
	public int getG_num() {
		return g_num;
	}
	public void setG_num(int g_num) {
		this.g_num = g_num;
	}
	
}
