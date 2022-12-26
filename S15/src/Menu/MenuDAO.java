package Menu;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import jdbc.JDBCTemplate;


public class MenuDAO {
	
	// 최소 5개 
//		메뉴 조회
	public MenuVO selectOne(Connection conn, int menuno){
		MenuVO vo = null;
		String sql = "select * from MenuTable";
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, menuno);
			rs = ps.executeQuery();
			if(rs.next()) {
				vo = new MenuVO();
				vo.setMenuno(rs.getInt("menuno"));
				vo.setMenuname(rs.getString("menuname"));
				vo.setMenudescription(rs.getString("menudescription"));
				vo.setMenuprice(rs.getInt("menuprice"));
				vo.setMenunutrient(rs.getString("menunutrient"));
				vo.setMenuorigin(rs.getString("menuorigin"));
				vo.setMenusize(rs.getString("menusize"));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		return vo;	
	}
}
