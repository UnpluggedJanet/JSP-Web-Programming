<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="jsp.TermProject.*, java.util.ArrayList"%>
<% request.setCharacterEncoding("euc-kr");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script languag=JavaScript>
    function check(join_num){
    pwd = prompt('����/���� �Ϸ��� ��й�ȣ�� ��������');
    document.location.href="join_control.jsp?action=edit&join_num="+join_num+"&join_passwd="+pwd;
    }
</script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>join_info</title>
</head>
<%
    JoinBean ji = new JoinBean();
    ArrayList<Join> datas = ji.getDBList();
%>
<body>
<center>
<font color=FF6000>*��������*</font>
<hr>
    <table cellpadding=5 cellspacing=0 border="1">
        <tr>
        <td><font color=FF00FF>��ȣ</td>
        <td><font color=FF00FF>ȸ��ID</td>
        <td><font color=FF00FF>�̸�</td>
        <td><font color=FF00FF>�г���</td>
        <td><font color=FF00FF>����</td>
        <td><font color=FF00FF>�ڵ���</td>
       <!--  <td><font color=FF00FF>���ɺо�</td></tr> -->
        <%
            for(Join join : datas) {
        %>
        <tr>
            <td><%=join.getJoin_num() %></td>
            <td><%=join.getJoin_id() %></td>
            <td><a href=javascript:check('<%=join.getJoin_num() %>')><%=join.getJoin_name() %></a></td>
            <td><%=join.getJoin_nickname() %></td>
            <td><%=join.getJoin_job() %></td>
            <td><%=join.getJoin_phone1() +"-"+ join.getJoin_phone2()+"-"+join.getJoin_phone3()%></td>
            
            
        </tr>
        <%
            }
        %>
    </table>
<form><a href = "join_main.jsp">�������ΰ���</a></form>
</center>

</body>
</html>