<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <jsp:useBean id="boaDTO" class="board2.BoardDTO"/>

<jsp:setProperty property="bname" name="boaDTO"/>
<jsp:setProperty property="btitle" name="boaDTO"/>
<jsp:setProperty property="bcontent" name="boadDTO"/>

<jsp:useBean id="boa" class="board2.BoardDAO"/>

<%
	int res = boa.insertBoard(boaDTO);

	if(res > 0) out.println("등록 처리되었습니다!!!");
	else out.println("등록 오류!!!!");
%> --%>


<jsp:useBean id="boa" class="board2.BoardDAO"/>    

<%
	//사용자 입력값 얻어오기
	String bname = request.getParameter("bname");
	String btitle = request.getParameter("btitle");
	String bcontent = request.getParameter("bcontent");
	
	// 유효성 검사
	if(bname == null || btitle == null || bcontent == null ||
			bname.trim().equals("") 
	|| btitle.trim().equals("")	|| bcontent.trim().equals("") ){
		response.sendRedirect("write_form2.jsp");
		return;
	}
	
	int result=boa.insertBoard(bname, btitle, bcontent);
	String msg="", url="";
	if(result>0){
		msg = "글 등록완료!!!";
		url = "list2.jsp";
	}else{
		msg = "글 등록 실패";
		url = "write_form2.jsp";
	}
%>

<script type="text/javascript">
	alert("<%=msg%>");
	location.href="<%=url%>";	
</script>	