<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Checkout</title>
</head>
<body>
<center>
<h2>������ ��ǰ ���</h2>
<hr>
<%
    ArrayList list = (ArrayList)session.getAttribute("productlist");
    if(list == null)
        out.println("������ ��ǰ�� �����ϴ�!!!");
        else{
        	for(Object productname:list){
        		out.println(productname+"<br>");
        	}
        }
        %></center>
<form><a href = "join_info.jsp">ȸ������������������</a></form>
</body>
</html>