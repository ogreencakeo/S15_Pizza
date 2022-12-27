package VO;

public class OrderEducationVO {
	
	private int orderdate;
	private int orderquantity;
	private int addmenuid;
	private String menuname;
	private int ordernum;
	
	@Override
	public String toString() {
		return "OrderEducation [orderdate=" + orderdate + ", orderquantity=" + orderquantity + ", addmenuid="
				+ addmenuid + ", menuname=" + menuname + ", ordernum=" + ordernum + "]";
	}

	public int getOrderdate() {
		return orderdate;
	}

	public void setOrderdate(int orderdate) {
		this.orderdate = orderdate;
	}

	public int getOrderquantity() {
		return orderquantity;
	}

	public void setOrderquantity(int orderquantity) {
		this.orderquantity = orderquantity;
	}

	public int getAddmenuid() {
		return addmenuid;
	}

	public void setAddmenuid(int addmenuid) {
		this.addmenuid = addmenuid;
	}

	public String getMenuname() {
		return menuname;
	}

	public void setMenuname(String menuname) {
		this.menuname = menuname;
	}

	public int getOrdernum() {
		return ordernum;
	}

	public void setOrdernum(int ordernum) {
		this.ordernum = ordernum;
	}
	
	

}
