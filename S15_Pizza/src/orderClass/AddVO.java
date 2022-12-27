package orderClass;

public class AddVO {
	
	private int addmenuid;
	private String addmenuname;
	
	@Override
	public String toString() {
		return "AddVO [addmenuid=" + addmenuid + ", addmenuname=" + addmenuname + "]";
	}

	public int getAddmenuid() {
		return addmenuid;
	}

	public void setAddmenuid(int addmenuid) {
		this.addmenuid = addmenuid;
	}

	public String getAddmenuname() {
		return addmenuname;
	}

	public void setAddmenuname(String addmenuname) {
		this.addmenuname = addmenuname;
	}
	
	

}
