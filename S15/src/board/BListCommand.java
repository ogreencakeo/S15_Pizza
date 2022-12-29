package board;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import board.BCommand;

import board.Bdao;
import board.Bdto;


public class BListCommand implements BCommand{
	public void execute(HttpServletRequest request, HttpServletResponse response){
		Bdao dao = new Bdao();
		ArrayList<Bdto> dtos = dao.list();
		request.setAttribute("list", dtos);
	}
}
