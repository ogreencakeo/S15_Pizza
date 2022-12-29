package jdbc;

import java.sql.*;
import javax.*;

public class JDBCTemplate {
	public static Connection getConnection() {
		Connection conn = null;
		
		try {
			String driver = "com.mysql.jbbc.Driver";
			Class.forName(driver);
			String url = "jdbc:mysql://127.0.0.1:3306/pizzadb";
			String user_id = "root";
			String user_pw = "1234";
			conn = DriverManager.getConnection(url, user_id, user_pw);
			System.out.println("데이터베이스 연결 성송");
			conn.setAutoCommit(false);
		}catch(Exception e) {
			System.out.println("데이터베이스 연결 실패");
			e.getMessage();
		}
		return conn;	
	}
	
	public static void commit(Connection conn) {
		try {
			if(conn != null && !conn.isClosed()) {
				conn.commit();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void rollbakc(Connection conn) {
		try {
			if(conn != null && !conn.isClosed()) {
				conn.rollback();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(Connection conn) {
		try {
			if(conn!= null && !conn.isClosed()) {
				conn.close();
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void close(Statement st) {
		try {
			if(st!= null && !st.isClosed()) {
				st.close();
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void close(ResultSet rs) {
		try {
			if(rs!= null && !rs.isClosed()) {
				rs.close();
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
