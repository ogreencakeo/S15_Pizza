<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.FileWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- save처리과정 -->
<!-- 
1. 사용자가 입력한 글 제목, 내용, 파일명을 얻어오는 과정
2. 파일명과 FileWriter와 스트림 연결
3. 스트림을 통해서 글제목과 내용을 파일에 쓴다.
4. 스트림 닫기
5. 파일에 쓰기가 완료 되었으면 메세지 띄우기
 -->    
 <%
 	request.setCharacterEncoding("UTF-8");
 	String title = request.getParameter("title");
 	String content = request.getParameter("info");
 	String fileName = request.getParameter("filename");
 	
 	if(fileName == null || fileName.trim().equals("")){
 		response.sendRedirect("notice_write.jsp");
 		return;
 	}
 	
 	
 	if(title == null || content == null || title.trim().equals("") || content.trim().equals("")){
 		%>
 		<script type="text/javascript">
			alert("글 내용과 공지 내용을 입력하시오!");
			history.go(-1);
		</script>
 		<%
 		return;
 		
 	}
 	
 	ServletContext ctx = config.getServletContext();
 	String allPath = request.getRealPath("/notice");
 	out.println("공지사항 저장될 경로 : " + allPath);
 	
 	String allFname = allPath + "/" + fileName;
 	// 파일 출력 
 	FileWriter fw = null;
 	// 웹브라우저에 보여져 출력할
 	PrintWriter pw = null;
 	
 	try{
 		fw = new FileWriter(allFname);
 		pw = new PrintWriter(fw, true);
 		pw.println("<body>");
 		pw.println(title);
 		pw.println(content);
 		pw.println("</body>");
 		
 		pw.close();
 		fw.close();
 		
 	}catch(IOException e){
 		out.println("입출력 오류 : " + e.getMessage());
 	}
 	
 %>
 <script type="text/javascript">
	alert("<%=fileName%> 파일에 쓰기 작업이 완료됨");
	location.href="<%=request.getContextPath()%>/customerCenter.jsp";
</script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>