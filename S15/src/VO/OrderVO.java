package VO;

public class OrderVO {
	
	private int ordernum;
	private int orderselect;
	private int ordertime;
	private String orderid;
	
	@Override
	public String toString() {
		return "OrderVO [ordernum=" + ordernum + ", orderselect=" + orderselect + ", ordertime=" + ordertime
				+ ", orderid=" + orderid + "]";
	}

	public int getOrdernum() {
		return ordernum;
	}

	public void setOrdernum(int ordernum) {
		this.ordernum = ordernum;
	}

	public int getOrderselect() {
		return orderselect;
	}

	public void setOrderselect(int orderselect) {
		this.orderselect = orderselect;
	}

	public int getOrdertime() {
		return ordertime;
	}

	public void setOrdertime(int ordertime) {
		this.ordertime = ordertime;
	}

	public String getOrderid() {
		return orderid;
	}

	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}
	
	

}
