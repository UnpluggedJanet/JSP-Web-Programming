<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import ="jsp.guestbook.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>����: �ۼ�ȭ��</title>
</head>
<body>
<center>
<h2>���� : �ۼ�ȭ��</h2>
<hr>
[<a href=guestbook_control.jsp?action=list>�Խù� �������</a>]
<form name=form1 method=post action=guestbook_control.jsp>
<input type=hidden name="action" value="insert">

<table cellpadding=5 cellspacing=0 border=1>
    <tr>
        <td bgcolor="#99ccff">�ۼ���</td>
        <td><input type="text" name="gb_name" size="20"></td>
    </tr>
    <tr>
        <td bgcolor="#99ccff">email</td>
        <td><input type="text" name="gb_email" size="20"></td>
    </tr>
    <tr>
        <td bgcolor="#99ccff">��ȭ��ȣ</td>
        <td><input type="text" name="gb_tel" size="20"></td>
    </tr>
    <tr>
        <td bgcolor="#99ccff">��й�ȣ</td>
        <td><input type="text" name="gb_passwd" size="20"></td>
    </tr>
    <tr>
        <td colspan="2"><textarea rows="5" name="gb_contents" cols="40"></textarea></td>
    </tr>
    <tr>
        <td colspan=2 align=center><input type=submit value="����"><input type=reset value="���"></td>
    </tr>
</table>
</form>
</center>
</body>
</html>