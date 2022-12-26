package Menu;
import java.sql.*;

import jdbc.JDBCTemplate;

public class MenuService {
	
	private MenuDAO dao = new MenuDAO();
	
	public MenuVO selectOne(int menuno) {
		MenuVO vo = null;
		Connection conn = JDBCTemplate.getConnection();
		
		vo = dao.selectOne(conn, menuno);
		
		JDBCTemplate.close(conn);
		return vo;
	}

}
