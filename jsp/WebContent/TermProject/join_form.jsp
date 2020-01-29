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
<h5>SM Telecom에 오신걸 환영합니다</h5>
<h5>회원가입을 해주세요^.^</h5>
<form name="form1" method="post" action="join_control.jsp">
<input type=hidden name="action" value="insert">

<table width=80% height=100% cellpadding=0 cellspacing=0 border=0>
<tr>
<td><font color=FF6000>*</font>회원ID</td>
<td><input type="text" size="15" name="join_id" maxlength="11"></td>
<td></td></tr>
<tr>
<td><font color=FF6000>*</font>이름</td>
<td><input type="text" size="9" name="join_name"></td></tr>
<tr>
<td><font color=FF6000>*</font>닉네임</td>
<td><input type="text" size="9" name="join_nickname"></td></tr>
<tr>
<td><font color=FF6000>*</font>비밀번호</td>
<td><input type="password" size="9" name="join_passwd"></td></tr>
<tr>
    <td><font color=FF6000>*</font>직업</td>
    <td>
    <select name=join_job>
    <option selected> 무직</option>
    <option>학생</option>
    <option>컴퓨터전문직</option>
    <option>회사원</option>
    <option>전업주부</option>
    <option>건축/토목</option>
    <option>금융업</option>
    <option>교수직</option>
    <option>공무원</option>
    <option>의료계</option>
    <option>법조계</option>
    <option>언론/출판</option>
    <option>자영업</option>
    <option>방송/연예/예술</option>
    <option>기타</option>
    </select></td></tr>
<tr>
<td class=memberCols1><font color=FF6000>*</font> 핸드폰
<td colspan = 2><input type="text" size=4 maxlength=4 name="join_phone1">-
    <input type="text" size=4 maxlength=4 name="join_phone2">-
    <input type="text" size=4 maxlength=4 name="join_phone3"></td></td></tr>

<!--  <tr>   
    <td><font color=FF6000>*</font>관심분야</td></tr>
    <tr>
    <td colspan=2>
    <input type=checkbox name=interest value="화장품/향수/미용품" >화장품/향수/미용품</input>
    <input type=checkbox name=interest value="컴퓨터/SW" >컴퓨터/SW</input>
    <input type=checkbox name=interest value="의류/패션잡화" >의류/패션잡화</input>
    <input type=checkbox name=interest value="생활/주방용품" >생활/주방용품</input>
    <input type=checkbox name=interest value="보석/시계/악세사리" >보석/시계/악세사리</input>
    <input type=checkbox name=interest value="가전/카메라" >가전/카메라</input>
    <input type=checkbox name=interest value="서적/음반/비디오" >서적/음반/비디오</input>
    <input type=checkbox name=interest value="스포츠/레져용품" >스포츠/레져용품</input>
    <input type=checkbox name=interest value="꽃배달/케익서비스" >꽃배달/케익서비스</input></td>
    </tr>--> 

<tr>
<td colspan=2 align=center><input type=submit value="확인"><input type=reset value="취소"></td>
</table>
</form></center>
</body>
</html>