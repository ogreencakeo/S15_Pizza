package VO;

public class addressVO {
	
	private String ordershop;
	private String deliberyplace;
	private String ordernum;
	
	@Override
	public String toString() {
		return "addressVO [ordershop=" + ordershop + ", deliberyplace=" + deliberyplace + ", ordernum=" + ordernum
				+ "]";
	}

	public String getOrdershop() {
		return ordershop;
	}

	public void setOrdershop(String ordershop) {
		this.ordershop = ordershop;
	}

	public String getDeliberyplace() {
		return deliberyplace;
	}

	public void setDeliberyplace(String deliberyplace) {
		this.deliberyplace = deliberyplace;
	}

	public String getOrdernum() {
		return ordernum;
	}

	public void setOrdernum(String ordernum) {
		this.ordernum = ordernum;
	}
	
	

}
