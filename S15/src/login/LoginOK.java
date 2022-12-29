package login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LoginOK")
public class LoginOK extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Connection conn;
	private Statement st;
	private ResultSet rs;
	
	private String id, pw;
       

    public LoginOK() {

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("doGet()");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost()");
		loginDo(request, response);
		
	}
	
	private void loginDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		String sql="select * from member where id ='" + id + "' and pw ='" + pw + "'";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/practicedb", "root", "1234");
			
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			
			while(rs.next()) {
				id = rs.getString("id");
				pw = rs.getString("pw");
			}
			
			// 세션 생성
			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("id", id);
			httpSession.setAttribute("pw", pw);
			
			response.sendRedirect("loginResult.jsp");
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
			try {
				if(st!=null) st.close();
				if(conn!=null) st.close();
			}catch(Exception e){
				
			}
			
		}
		
	}
}
