<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>핸드폰 구매</title>
</head>
<body>
<center>
<h2>핸드폰 선택</h2>
<hr>
<form name="form1" method="post" action="add.jsp">
<select name="product">
    <option>SCH-M720</option>
    <option>SCH-W900</option>
    <option>SCH-M715</option>
    <option>SCH-W910</option>
    <option>SCH-W830</option>
    <option>SCH-W770</option>
  </select>
  <input type="submit" value="넣기">"
</form>
<a href="checkOut.jsp">확인하기</a>
</center></body>
</html>