package orderClass;

public class NonMemberVO {
	
	private int ordernum;

	@Override
	public String toString() {
		return "NonMemberVO [ordernum=" + ordernum + "]";
	}

	public int getOrdernum() {
		return ordernum;
	}

	public void setOrdernum(int ordernum) {
		this.ordernum = ordernum;
	}
	
	

}
