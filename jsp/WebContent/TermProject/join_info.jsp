<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="jsp.TermProject.*, java.util.ArrayList"%>
<% request.setCharacterEncoding("euc-kr");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script languag=JavaScript>
    function check(join_num){
    pwd = prompt('수정/삭제 하려면 비밀번호를 넣으세요');
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
<font color=FF6000>*가입정보*</font>
<hr>
    <table cellpadding=5 cellspacing=0 border="1">
        <tr>
        <td><font color=FF00FF>번호</td>
        <td><font color=FF00FF>회원ID</td>
        <td><font color=FF00FF>이름</td>
        <td><font color=FF00FF>닉네임</td>
        <td><font color=FF00FF>직업</td>
        <td><font color=FF00FF>핸드폰</td>
       <!--  <td><font color=FF00FF>관심분야</td></tr> -->
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
<form><a href = "join_main.jsp">메인으로가기</a></form>
</center>

</body>
</html>