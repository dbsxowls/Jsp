<%@ page contentType="text/html; charset=UTF-8" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>3-3</title>
</head>
<body>
	<h3>3-3.JSP �ݺ���</h3>
	
	<h4>for</h4>
	<%
		for(int i=1; i<=5; i++){
			out.println("<span>for �ݺ��� :"+i+" </span>");	
		}
	%>
	<h4>������</h4>
	<table border ="1">
		<tr>
			<td>1��</td>
			<td>2��</td>
			<td>3��</td>
			<td>4��</td>
			<td>5��</td>
			<td>6��</td>
			<td>7��</td>
			<td>8��</td>
			<td>9��</td>
		</tr>
		<% for(int x=1; x<=9;x++){%>
		 <tr>
		 <% for(int y=2; y<=9; y++){ %>
		 	<td><%=y %>x<%=x %>=<%=y*x %></td>
		<%} %>		 
		 </tr>
		<% } %>
	
	</table>

		
		
	%>
	
	
</body>
</html>