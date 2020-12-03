<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	//해당 사용자 세션 정보 초기화 
	session.invalidate();
	response.sendRedirect("./login.jsp");
%>
	