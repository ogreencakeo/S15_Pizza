package board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.BListCommand;
import board.BCommand;
import board.BWriteCommand;
/**
 * Servlet implementation class FrontController
 */
@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		 System.out.println("doGet"); 
		 actionDo(request,response);
		 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("doPost"); actionDo(request,response);
		
	}

	protected void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("actionDo");
		
		request.setCharacterEncoding("UTF-8");
		BCommand command = null;
		
		String viewPage = null;
		
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String cmd = uri.substring(conPath.length());
		
		if(cmd.equals("/write_view.do")){
			viewPage = "write_form.jsp";
		}else if(cmd.equals("/write.do")){
			command = new BWriteCommand();
			command.execute(request, response);
			viewPage = "list.do";
			
//			System.out.println("####"); response.sendRedirect("list.do"); 
			
			
		}else if(cmd.equals("/list.do")){
			command = new BListCommand();
			command.execute(request, response);
			viewPage = "list.jsp";
			
//			System.out.println("####"); response.sendRedirect("list.jsp"); 
		}
		
		 RequestDispatcher dispat = request.getRequestDispatcher(viewPage);
		 dispat.forward(request, response);
		 
	}	
}
