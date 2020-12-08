<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
    <link rel="stylesheet" href="../css/style.css"/>
</head>
<body>
    <div id="wrapper">
        <section id="user" class="register">
            <form action="/Jboard1/user/proc/register.jsp" method="POST">
                <table border="1">
                    <caption>ID&PASSWORD</caption>
                    <tr>
                        <td>아이디</td>
                        <td>
                            <input type="text" name="uid" placeholder="ID"/>
                            <span class="resultId"></span>
                        </td>
                    </tr>
                    <tr>
                        <td>비밀번호</td>
                        <td>
                            <input type="password" name="pass1" placeholder="PASSWORD"/>                            
                        </td>
                    </tr>
                    <tr>
                        <td>비밀번호 확인</td>
                        <td>
                            <input type="password" name="pass2" placeholder="Re-enter PASSWORD"/>
                            <span class="resultPass"></span>
                        </td>
                    </tr>
                </table>
                <table border="1">
                    <caption>Personal Information</caption>
                    <tr>
                        <td>Name</td>
                        <td>
                            <input type="text" name="name" placeholder="Name"/>                            
                        </td>
                    </tr>
                    <tr>
                        <td>NickName</td>
                        <td>
                            <p>공백없이 한글, 영문, 숫자만 입력가능</p>
                            <input type="text" name="nick" placeholder="NickName"/>
                            <span class="resultNick"></span>                            
                        </td>
                    </tr>
                    <tr>
                        <td>E-Mail</td>
                        <td>
                            <input type="email" name="email" placeholder="Email"/>
                        </td>
                    </tr>
                    <tr>
                        <td>휴대폰</td>
                        <td>
                            <input type="text" name="hp" placeholder="Mobile number including -" minlength="13" maxlength="13" />
                        </td>
                    </tr>
                    <tr>
                        <td>주소</td>
                        <td>
                            <div>
                                <input type="text" name="zip" placeholder="우편번호" readonly/>
                                <button class="btnZip">주소검색</button>
                            </div>                            
                            <div>
                                <input type="text" name="addr1" placeholder="주소를 검색하세요." readonly/>
                            </div>
                            <div>
                                <input type="text" name="addr2" placeholder="상세주소를 입력하세요."/>
                            </div>
                        </td>
                    </tr>
                </table>

                <div>
                    <a href="/Jboard1/user/login.jsp" class="btnCancel">Cancel</a>
                    <input type="submit"   class="btnJoin" value="Sign up"/>
                </div>

            </form>
        </section>
    </div>    
</body>
</html>