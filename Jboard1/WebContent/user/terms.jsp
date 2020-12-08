<%@page import="kr.co.jboard1.bean.TermsBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//DB정보
	String host = "jdbc:mysql://192.168.10.114:3306/ytj";
	String user = "ytj";
	String pw = "1234";

			
	// 1단계 - JDBC 드라이버 로드
	Class.forName("com.mysql.jdbc.Driver");
	// 2단계 - 데이터베이스 접속
	Connection conn = DriverManager.getConnection(host, user, pw);
	
	// 3단계 - SQL 실행객체 생성
	Statement stmt = conn.createStatement();
	
	// 4단계 - SQL 실행
	String sql = "SELECT * FROM `JBOARD_TERMS`;";
	ResultSet rs = stmt.executeQuery(sql);
	
	// 5단계 - 결과셋 처리(SELECT일 경우)
	TermsBean tb = new TermsBean();
	
	if(rs.next()){
		String terms   = rs.getString(1); 
		String privacy = rs.getString(2); 
		
		tb.setTerms(terms);
		tb.setPrivacy(privacy);
	}
	
	// 6단계 - 데이터베이스 종료
	rs.close();
	stmt.close();
	conn.close();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Terms and Condition</title>
    <link rel="stylesheet" href="../css/style.css"/>    
</head>
<body>
    <div id="wrapper">
        <section id="user" class="terms">
            <table>
                <caption>Terms and Condition</caption>
                <tr>
                    <td>
                        <textarea readonly><%= tb.getTerms() %></textarea>
                        <p>
                            <label><input type="checkbox" name="chk1"/>동의합니다.</label>
                        </p>
                    </td>
                </tr>
            </table>
            <table>
                <caption>Personal data treatment rules</caption>
                <tr>
                    <td>
                        <textarea readonly><%= tb.getPrivacy() %></textarea>
                        <p>
                            <label><input type="checkbox" name="chk2"/>동의합니다.</label>
                        </p>
                    </td>
                </tr>
            </table>
            <div>
                <a href="/Jboard1/user/login.jsp">Cancel</a>
                <a href="/Jboard1/user/register.jsp">Next</a>
            </div>
        </section>
    </div>
    
</body>
</html>