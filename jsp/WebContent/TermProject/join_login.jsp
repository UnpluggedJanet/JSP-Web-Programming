<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>join_login</title>
</head>
<body bgcolor=#87CEFA>
<center>
<h2>�α����ϱ�!!</h2>
<hr>
<form method="post" action="join_login_ps.jsp" name="form1">
    <table width="250" border="1" align="center" cellspacing="0" cellpadding="5">
        <tr>
        <td colspan="2" align="center">�α���</td>
        </tr>
        <tr>
        <td>���̵�</td>
        <td><input type="text" name="userid" size="10"></td>
        </tr>
        <tr>
        <td>�н�����</td>
        <td><input type="password" name="passwd" size="10"></td>
        </tr>
        <tr>
        <td colspan="2" align="center">
        <input type="submit" name="Submit" value="�α���"></td>
        </tr>
    </table>
</form>
</center>        
</body>
</html>

