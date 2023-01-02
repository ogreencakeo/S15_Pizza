package board;
import java.sql.*;
import java.util.*;

public class BoardDAO {
	Connection dbconn;
	PreparedStatement ps;
	ResultSet rs;
	String url ="jdbc:mysql://127.0.0.1:3306/practicedb";
	String uid ="root", pwd = "1234";
	
	public BoardDAO(){
		try {
			Class.forName("com.mysql.jdbc.driver");
			dbconn = DriverManager.getConnection(url,uid,pwd);
			System.out.println("연결성공");
		} catch (Exception e) {			
			e.printStackTrace();
		}
	}
	
	
	public int insertBoard(BoardDTO bdto) throws SQLException{
		String bname = bdto.getBname();
		String btitle = bdto.getBtitle();
		String bcontent = bdto.getBcontent();
		int n = this.insertBoard( bname, btitle, bcontent);
		return n;
	}
	
	public int insertBoard(String bname, String btitle, String bcontent) 
			throws SQLException{
		try{
			String sql="insert into board values(?,?,?)";
			
			ps=dbconn.prepareStatement(sql);
			ps.setString(1, bname);
			ps.setString(2, btitle);
			ps.setString(3, bcontent);
			
			int n = ps.executeUpdate();
			return n;
		}finally{
			if(ps !=null) ps.close();
			if(dbconn !=null) dbconn.close();
		}		
	}
	
	public BoardDTO[] select() throws SQLException{
		try{
			String sql = "select * from board";
			ps = dbconn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			BoardDTO arr[] = createArray(rs);
			return arr;
		}finally{
			if(rs !=null) rs.close();
			if(ps !=null) ps.close();
			if(dbconn !=null) dbconn.close();
		}
	}

	public BoardDTO[] createArray(ResultSet rs) throws SQLException{
		Vector<BoardDTO> v = new Vector<BoardDTO>();
		
		while(rs.next()){
			String bname = rs.getString(1);
			String btitle = rs.getString(2);
			String bcontent = rs.getString(3);
			
			BoardDTO rowSt = new BoardDTO(bname, btitle, bcontent);
			v.add(rowSt);
		}//while End
		int vSize = v.size();
		BoardDTO stArray[] = new BoardDTO[vSize];
		v.copyInto(stArray); 
		return stArray;
	}
	

}
