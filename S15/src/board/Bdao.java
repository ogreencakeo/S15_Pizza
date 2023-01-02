package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class Bdao {
	
DataSource dataSource;
	
	public Bdao(){
		try {
			Context context = new InitialContext();
			dataSource = (DataSource)context.lookup("java:comp/env/jdbc/mysql");
			
		} catch (Exception e) {			
			e.printStackTrace();
		}		
	}
	
	public ArrayList<Bdto> list(){
		ArrayList<Bdto> dtos = new ArrayList<Bdto>();
		Connection conn = null;
		PreparedStatement pstmt =null;
		ResultSet rs = null;
		
		try {
			conn = dataSource.getConnection();
			String sql = "select bname, btitle, bcontent from board";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String bname = rs.getString("bname");
				String btitle = rs.getString("btitle");
				String bcontent = rs.getString("bcontent");
				
				Bdto dto = new Bdto(bname, btitle, bcontent);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt !=null) pstmt.close();
				if(conn != null) conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return dtos;
	}
	
	public void write(String bname, String btitle, String bcontent){
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = dataSource.getConnection();
			String sql ="insert into board(bname, btitle, bcontent)"
					+ "values(?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bname);
			pstmt.setString(2, btitle);
			pstmt.setString(3, bcontent);
			
			int n = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{			
				try {
				  if(pstmt !=null)pstmt.close();
				  if(conn !=null) conn.close();
				} catch (SQLException e) {					 
					e.printStackTrace();
				}			
		}		
	}//write
	
}
