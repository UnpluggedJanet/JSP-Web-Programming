<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="jsp.TermProject.*, java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script language=JavaScript> 
    function delcheck(){
        result = confirm("������ �����Ͻðڽ��ϱ�?");
            if(result){
                document.form1.action.value="delete";
                document.form1.submit();
            }
            else
                return;
        }
</script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȸ����������</title>
</head>
<body>
<center>
<h5>ȸ������ ����ȭ��</h5>
<%
    Join join = (Join)request.getAttribute("ji");
%>
<form name=form1 method=post action="join_control.jsp">
<input type="hidden" name="join_num" value="<%=join.getJoin_num() %>">
<input type="hidden" name="action" value="update">
<table width=80% height=100% cellpadding=0 cellspacing=0 border=0>
<tr>
<td><font color=FF6000>*</font>ȸ��ID</td>
<td><input type="text" size="15" name="join_id" maxlength="11" value="<%=join.getJoin_id() %>"></td>
<td></td></tr>
<tr>
<td><font color=FF6000>*</font>�̸�</td>
<td><input type="text" size="9" name="join_name" value="<%=join.getJoin_name() %>"></td></tr>
<tr>
<td><font color=FF6000>*</font>�г���</td>
<td><input type="text" size="9" name="join_nickname" value="<%=join.getJoin_nickname() %>"></td></tr>
<tr>
<td><font color=FF6000>*</font>��й�ȣ</td>
<td><input type="text" size="9" name="join_passwd" value="<%=join.getJoin_passwd() %>"></td></tr>
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
<td colspan = 2><input type="text" size=4 maxlength=4 name="join_phone1" value="<%=join.getJoin_phone1() %>">-
    <input type="text" size=4 maxlength=4 name="join_phone2" value="<%=join.getJoin_phone2() %>">-
    <input type="text" size=4 maxlength=4 name="join_phone3" value="<%=join.getJoin_phone3() %>">
<!-- <tr>    
    <td><font color=FF6000>*</font>���ɺо�</td></tr>
    <tr>
    <td colspan=2>
    <input type=checkbox name=interest value="ȭ��ǰ/���/�̿�ǰ" >ȭ��ǰ/���/�̿�ǰ
    <input type=checkbox name=interest value="��ǻ��/SW" >��ǻ��/SW<
    <input type=checkbox name=interest value="�Ƿ�/�м���ȭ" >�Ƿ�/�м���ȭ
    <input type=checkbox name=interest value="��Ȱ/�ֹ��ǰ" >��Ȱ/�ֹ��ǰ
    <input type=checkbox name=interest value="����/�ð�/�Ǽ��縮" >����/�ð�/�Ǽ��縮
    <input type=checkbox name=interest value="����/ī�޶�" >����/ī�޶�
    <input type=checkbox name=interest value="����/����/����" >����/����/����
    <input type=checkbox name=interest value="������/������ǰ" >������/������ǰ
    <input type=checkbox name=interest value="�ɹ��/���ͼ���" >�ɹ��/���ͼ���</td>
    </tr> -->
</table>
<tr><td colspan=2 align=center><input type=submit value="�����Ϸ�"><input type=reset value="���"><input type="button" value="����" onClick="delcheck()"></td></tr>
</form></center>

</body>
</html>