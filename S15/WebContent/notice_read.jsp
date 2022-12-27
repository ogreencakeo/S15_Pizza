<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
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
	out.println(fname);
	
	String rFile = config.getServletContext().getRealPath("../");
	rFile+="/"+fname;
	
	out.println("읽어올 파일 경로:"+rFile);	
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