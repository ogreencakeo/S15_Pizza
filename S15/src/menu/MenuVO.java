package menu;


public class MenuVO {
	
	private int menuno;
	private String menuname;
	private String menudescription;
	private int menuprice;
	private String menunutrient;
	private String menuorigin;
	private String menusize;
	
	public MenuVO() {
	
	}
	
	
	public MenuVO(int menuno, String menuname, String menudescription, int menuprice, String menunutrient,
			String menuorigin, String menusize) {
		super();
		this.menuno = menuno;
		this.menuname = menuname;
		this.menudescription = menudescription;
		this.menuprice = menuprice;
		this.menunutrient = menunutrient;
		this.menuorigin = menuorigin;
		this.menusize = menusize;
	}


	@Override
	public String toString() {
		return "MenuVO [menuno=" + menuno + ", menuname=" + menuname + ", menudescription=" + menudescription
				+ ", menuprice=" + menuprice + ", menunutrient=" + menunutrient + ", menuorigin=" + menuorigin
				+ ", menusize=" + menusize + "]";
	}


	public int getMenuno() {
		return menuno;
	}


	public void setMenuno(int menuno) {
		this.menuno = menuno;
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
	