package board;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import board.BCommand;

import board.Bdao;
import board.Bdto;
import jdk.nashorn.api.scripting.JSObject;


public class BListCommand implements BCommand{
	public void execute(HttpServletRequest request, HttpServletResponse response){
//		System.setProperty( "https.protocols", "TLSv1,TLSv1.1,TLSv1.2" );
		
		Bdao dao = new Bdao();
		ArrayList<Bdto> dtos = dao.list();
		
		request.setAttribute("list", dtos);
		
	}
}
