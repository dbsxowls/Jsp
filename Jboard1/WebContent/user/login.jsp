<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>로그인</title>
    <link rel="stylesheet" href="/Jboard1/css/style.css"/>
</head>
<body>
    <div id="wrapper">
        <section id="user" class="login">
            <form action="/Jboard1/user/proc/login.jsp" method ="post">
                <table border="0">
                    <tr>
                        <td><img src="/Jboard1/img/login_ico_id.png" alt="아이디"/></td>
                        <td><input type="text" name="uid" placeholder="ID" /></td>
                    </tr>
                    <tr>
                        <td><img src="/Jboard1/img/login_ico_pw.png" alt="비밀번호"/></td>
                        <td><input type="password" name="pass" placeholder="Password" /></td>
                    </tr>
                </table>
                <input type="submit" class="btnLogin" value="Login"/>
            </form>

            <div class="info">
                <h3>Notice</h3>
                <p>
                    Please sign up if you are not yet registered.
                </p>
                <a href="/Jboard1/user/terms.jsp">Sign up</a>
            </div>

        </section>
    </div>    
</body>
</html>