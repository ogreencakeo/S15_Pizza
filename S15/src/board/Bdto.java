package board;

public class Bdto {
	
	String bname;
	String btitle;
	String bcontent;
	
	public Bdto() {
	}

	@Override
	public String toString() {
		return "Bdto [bname=" + bname + ", btitle=" + btitle + ", bcontent=" + bcontent + "]";
	}

	public Bdto(String bname, String btitle, String bcontent) {
		super();
		this.bname = bname;
		this.btitle = btitle;
		this.bcontent = bcontent;
	}

	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}

	public String getBtitle() {
		return btitle;
	}

	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}

	public String getBcontent() {
		return bcontent;
	}

	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}
	
	

}
