package trip.stay.dto;

public class ReserveDto {

	private int res_num;
	private int res_total_price;
	private String res_check_in;
	private String res_check_out;
	private String res_pay_check;
	
	private String u_id;
	private int s_num;
	
	public ReserveDto() {
		// TODO Auto-generated constructor stub
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	public int getS_num() {
		return s_num;
	}

	public void setS_num(int s_num) {
		this.s_num = s_num;
	}

	public int getRes_num() {
		return res_num;
	}

	public void setRes_num(int res_num) {
		this.res_num = res_num;
	}

	public int getRes_total_price() {
		return res_total_price;
	}

	public void setRes_total_price(int res_total_price) {
		this.res_total_price = res_total_price;
	}

	public String getRes_check_in() {
		return res_check_in;
	}

	public void setRes_check_in(String res_check_in) {
		this.res_check_in = res_check_in;
	}

	public String getRes_check_out() {
		return res_check_out;
	}

	public void setRes_check_out(String res_check_out) {
		this.res_check_out = res_check_out;
	}

	public String getRes_pay_check() {
		return res_pay_check;
	}

	public void setRes_pay_check(String res_pay_check) {
		this.res_pay_check = res_pay_check;
	}
	
	
}
