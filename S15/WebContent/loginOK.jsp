<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "admin.AdminDAO, admin.AdminVO"%>    
<%
	request.setCharacterEncoding("EUC-KR");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");	
	
	AdminDAO adao = AdminDAO.getInstance();
	int chkNum = adao.adminCheck(id, pw);
	
	if(chkNum == -1){	
%>
<script language="javascript">
	alert("아이디와 비밀번호를 다시 입력해주시기 바랍니다.");
	history.go(-1);
</script>"
<% 
	}else if(chkNum == 0){		
%>
<script language="javascript">
	alert("아이디와 비밀번호를 다시 입력해주시기 바랍니다.");
	history.go(-1);
</script>"
<%
	}else if(chkNum == 1){
		AdminVO adto = adao.getAdmin(id);
		
		String name = adto.getName();
		session.setAttribute("id", id);
		session.setAttribute("name", name);
		session.setAttribute("valid", "yes");
		response.sendRedirect("loginResult.jsp");
	}
%>

