<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.util.*, java.io.*"%>
<%
	Calendar cal=Calendar.getInstance();
	int yy = cal.get(Calendar.YEAR);
	int mm = cal.get(Calendar.MONTH)+1;
	int dd = cal.get(Calendar.DAY_OF_MONTH);
	
	out.println(yy+"년"+mm+"월"+dd+"일");
	
	String fname =yy+"";
	
	if(mm<10) fname+=("0"+mm);
	else fname+=mm;
	
	if(dd<10) fname+=("0"+dd);
	else fname+=dd;
	
	fname+=".html";
	//out.println(fname);
	
	String rFile = config.getServletContext().getRealPath("/notice");
	rFile+="/"+fname;
	
	//out.println("읽어올 파일 경로:"+rFile);
	
	FileReader fr = null;
	BufferedReader br = null;
	
	try{
		fr = new FileReader(rFile);
		br = new BufferedReader(fr);
		String contents = "";
		while((contents=br.readLine())!= null){
			out.println(contents+"<br/>");
		}
		br.close(); fr.close();
	}catch(FileNotFoundException e){
		out.println("오늘은 문의 내용이 없습니다.");
		out.println("<a href='javascript:self.close();'");
		out.println("close </a>");
	}catch(IOException e){
		out.println("IO오류:"+e.getMessage());
	}
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	
</head>
<body>

</body>
</html>