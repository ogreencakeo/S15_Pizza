package orderClass;

public class menuVO {
	
	private String menuname;
	private String menudescription;
	private int menuprice;
	private String menunutrient;
	private String menuorigin;
	private String menusize;
	
	
	@Override
	public String toString() {
		return "menuVO [menuname=" + menuname + ", menudescription=" + menudescription + ", menuprice=" + menuprice
				+ ", menunutrient=" + menunutrient + ", menuorigin=" + menuorigin + ", menusize=" + menusize + "]";
	}


	public String getMenuname() {
		return menuname;
	}


	public void setMenuname(String menuname) {
		this.menuname = menuname;
	}


	public String getMenudescription() {
		return menudescription;
	}


	public void setMenudescription(String menudescription) {
		this.menudescription = menudescription;
	}


	public int getMenuprice() {
		return menuprice;
	}


	public void setMenuprice(int menuprice) {
		this.menuprice = menuprice;
	}


	public String getMenunutrient() {
		return menunutrient;
	}


	public void setMenunutrient(String menunutrient) {
		this.menunutrient = menunutrient;
	}


	public String getMenuorigin() {
		return menuorigin;
	}


	public void setMenuorigin(String menuorigin) {
		this.menuorigin = menuorigin;
	}


	public String getMenusize() {
		return menusize;
	}


	public void setMenusize(String menusize) {
		this.menusize = menusize;
	}
	
	

}
