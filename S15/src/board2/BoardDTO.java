package board2;

public class BoardDTO {
	private String bname;
	private String btitle;
	private String bcontent;
	
	public BoardDTO() {
	}


	public BoardDTO(String bname, String btitle, String bcontent) {
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
