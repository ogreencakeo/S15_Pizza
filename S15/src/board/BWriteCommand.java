package board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.Bdao;

public class BWriteCommand implements BCommand{
	
	public void execute(HttpServletRequest request, HttpServletResponse response){
		String bname = request.getParameter("bname");
		String btitle = request.getParameter("btitle");
		String bcontent = request.getParameter("bcontent");
		
		Bdao dao = new Bdao();
		
		dao.write(bname, btitle, bcontent);
		
	}
}
