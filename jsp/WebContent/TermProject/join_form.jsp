<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>join_form</title>
</head>
<body>
<center>
<h2>Welcome to 'SM' World!!</h2>
<h5>SM Telecom�� ���Ű� ȯ���մϴ�</h5>
<h5>ȸ�������� ���ּ���^.^</h5>
<form name="form1" method="post" action="join_control.jsp">
<input type=hidden name="action" value="insert">

<table width=80% height=100% cellpadding=0 cellspacing=0 border=0>
<tr>
<td><font color=FF6000>*</font>ȸ��ID</td>
<td><input type="text" size="15" name="join_id" maxlength="11"></td>
<td></td></tr>
<tr>
<td><font color=FF6000>*</font>�̸�</td>
<td><input type="text" size="9" name="join_name"></td></tr>
<tr>
<td><font color=FF6000>*</font>�г���</td>
<td><input type="text" size="9" name="join_nickname"></td></tr>
<tr>
<td><font color=FF6000>*</font>��й�ȣ</td>
<td><input type="password" size="9" name="join_passwd"></td></tr>
<tr>
    <td><font color=FF6000>*</font>����</td>
    <td>
    <select name=join_job>
    <option selected> ����</option>
    <option>�л�</option>
    <option>��ǻ��������</option>
    <option>ȸ���</option>
    <option>�����ֺ�</option>
    <option>����/���</option>
    <option>������</option>
    <option>������</option>
    <option>������</option>
    <option>�Ƿ��</option>
    <option>������</option>
    <option>���/����</option>
    <option>�ڿ���</option>
    <option>���/����/����</option>
    <option>��Ÿ</option>
    </select></td></tr>
<tr>
<td class=memberCols1><font color=FF6000>*</font> �ڵ���
<td colspan = 2><input type="text" size=4 maxlength=4 name="join_phone1">-
    <input type="text" size=4 maxlength=4 name="join_phone2">-
    <input type="text" size=4 maxlength=4 name="join_phone3"></td></td></tr>

<!--  <tr>   
    <td><font color=FF6000>*</font>���ɺо�</td></tr>
    <tr>
    <td colspan=2>
    <input type=checkbox name=interest value="ȭ��ǰ/���/�̿�ǰ" >ȭ��ǰ/���/�̿�ǰ</input>
    <input type=checkbox name=interest value="��ǻ��/SW" >��ǻ��/SW</input>
    <input type=checkbox name=interest value="�Ƿ�/�м���ȭ" >�Ƿ�/�м���ȭ</input>
    <input type=checkbox name=interest value="��Ȱ/�ֹ��ǰ" >��Ȱ/�ֹ��ǰ</input>
    <input type=checkbox name=interest value="����/�ð�/�Ǽ��縮" >����/�ð�/�Ǽ��縮</input>
    <input type=checkbox name=interest value="����/ī�޶�" >����/ī�޶�</input>
    <input type=checkbox name=interest value="����/����/����" >����/����/����</input>
    <input type=checkbox name=interest value="������/������ǰ" >������/������ǰ</input>
    <input type=checkbox name=interest value="�ɹ��/���ͼ���" >�ɹ��/���ͼ���</input></td>
    </tr>--> 

<tr>
<td colspan=2 align=center><input type=submit value="Ȯ��"><input type=reset value="���"></td>
</table>
</form></center>
</body>
</html>