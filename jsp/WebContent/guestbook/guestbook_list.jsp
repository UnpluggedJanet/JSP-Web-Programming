<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="jsp.guestbook.*, java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script languag=JavaScript>
    function check(gb_id){
    pwd = prompt('����/���� �Ϸ��� ��й�ȣ�� ��������');
    document.location.href="guestbook_control.jsp?action=edit&gb_id="+gb_id+"&upasswd="+pwd;
    }
</script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���� : ���ȭ��</title>
</head>
<%
    GuestBean gb = new GuestBean();
    ArrayList<GuestBook> datas = gb.getDBList();
%>
<body>
<center>
<h2>���� : ���ȭ��</h2>
<hr>
<form>
<a href="guestbook_form.jsp">���� ����</a><p>

    <table cellpadding=5 cellspacing=0 border="1">
        <tr bgcolor="#99ccff"><td>��ȣ</td><td>�ۼ���</td><td>��ȭ��ȣ</td><td>�ۼ���</td><td>����</td></tr>
        <%
            for(GuestBook guestbook : datas) {
        %>
        <tr>
            <td><%=guestbook.getGb_id() %></td>
            <td><%=guestbook.getGb_name() %></td>
            <td><%=guestbook.getGb_tel() %></td>
            <td><%=guestbook.getGb_date() %></td>
            <td><a href=javascript:check('<%=guestbook.getGb_id() %>')><%=guestbook.getGb_contents() %></a></td>
        </tr>
        <%
            }
        %>
    </table>
</form>
</center>
</body>
</html>