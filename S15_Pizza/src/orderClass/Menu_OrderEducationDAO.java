package orderClass;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import common.jdbc.JdbcTemplate;
import kh.s0.myboard.board.model.BoardVo;

/*import common.jdbc.JdbcTemplate;
import kh.s0.myboard.board.model.BoardVo;*/

public class Menu_OrderEducationDAO {
	
	// 최소 5개 
//		insert - 등록
		public int insert(Connection conn, menuVO vo) {
			System.out.println(">>>>menuVO Param :"+ vo);
			int result = 0;
			String sql = "INSERT INTO BOARD (menuname, menudescription, menuprice, menunutrient, menuorigin, menusize)";
			/*
			 * sql +=
			 * "VALUES ((SELECT NVL(MAX(BNO),0)+1 FROM BOARD), ?,?, (SELECT NVL(MAX(BNO),0)+1 FROM BOARD), 0, 1, 'EJKIM', 'A')"
			 * ;
			 */
			PreparedStatement pstmt = null;
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, vo.getMenuname());
				pstmt.setString(2, vo.getMenudescription());
				pstmt.setInt(3, vo.getMenuprice());
				pstmt.setString(4, vo.getMenunutrient());
				pstmt.setString(5, vo.getMenuorigin());
				pstmt.setString(6, vo.getMenusize());

				result = pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				/* JdbcTemplate.close(pstmt); */
			}
			
			
			
			System.out.println(">>>>menuVO Return:"+ result);
			return result;
		}
		
//		update - 수정
		public int update(Connection conn, OrderEducationVO vo, String menuname/*주로 PK*/) {
			int result = 0;

			String sql = "update board set BTITLE=? BCONTENT=? where bno=?";
			PreparedStatement pstmt = null;
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, vo.getBtitle());
				pstmt.setString(2, vo.getBcontent());
				pstmt.setInt(3, bno);
				result = pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				JdbcTemplate.close(pstmt);
			}
			
			return result;
		}
}
