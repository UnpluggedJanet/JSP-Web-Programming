<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="jsp.TermProject.*, java.util.ArrayList"%>
    <%request.setCharacterEncoding("euc-kr"); %>
<jsp:useBean id="jibean" class="jsp.TermProject.JoinBean"/>
<jsp:useBean id="join" class="jsp.TermProject.Join"/>
<jsp:setProperty name="join" property="*"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�α���</title>
</head>
<body>
<hr>

<%
		JoinBean ji = new JoinBean();
		ArrayList<Join> datas = ji.getDBList();
		
        String useridin = request.getParameter("userid");
        session.setAttribute("useridin", useridin);
        //String passwdin = request.getParameter("passwd");
        //session.setAttribute("passwd", passwdin);       
        String userid = (String)session.getAttribute("useridin");
        //String passwd = (String)session.getAttribute("passwd");
        if(datas.contains(userid)){
        	out.println("�α��� ����!!");          
            out.println(userid + " �� �ݰ����ϴ�^.^");
        }
        else
        	out.println("�α��� ����!!");
    %>
    <form><a href = "join_login.jsp">�ٽ÷α����ϱ�</a></form>
    <%
        //String _passwd = ji.getJoin_passwd();
  
%>

<hr>
<form><a href = "join_info.jsp">ȸ������������������</a></form>
<a href = "buyPhone.jsp">�ڵ��� �緯 ���� Ŭ��!!</a></form>
</body>
</html>