<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="jsp.guestbook.*, java.util.ArrayList"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script language=JavaScript> 
    function delcheck(){
        result = confirm("정말로 삭제하시겠습니까?");
            if(result){
                document.form1.action.value="delete";
                document.form1.submit();
            }
            else
                return;
        }
</script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>방명록: 수정화면</title>
</head>
<body>
<center>
<h2>방명록 : 수정화면</h2>
<hr>
[<a href=guestbook_control.jsp?action=list>게시물 목록으로</a>]
<%
    GuestBook guestbook = (GuestBook)request.getAttribute("gbook");
%>
<form name=form1 method=post action=guestbook_control.jsp>
<input type=hidden name="gb_id" value="<%=guestbook.getGb_id() %>">
<input type=hidden name="action" value="update">
<table cellpadding=5 cellspacing=0 border=1>
    <tr>
        <td bgcolor="#99ccff">작성자</td>
        <td><input type="text" name="gb_name" size="20" value="<%=guestbook.getGb_name() %>"></td>
    </tr>
        <td bgcolor="#99ccff">email</td>
        <td><input type="text" name="gb_email" size="20" value="<%=guestbook.getGb_email() %>"></td>
    </tr>
    <tr>
        <td bgcolor="#99ccff">전화번호</td>
        <td><input type="text" name="gb_tel" size="20" value="<%=guestbook.getGb_tel() %>"></td>
    </tr>
    <tr>
        <td bgcolor="#99ccff">비밀번호</td>
        <td><input type="text" name="gb_passwd" size="20" value="<%=guestbook.getGb_passwd() %>"></td>
    </tr>
    <tr>
        <td colspan="2"><textarea rows="5" name="gb_contents" cols="40"><%=guestbook.getGb_contents() %></textarea></td>
    </tr>
    <tr>
        <td colspan=2 align=center><input type="submit" value="저장"><input type="reset" value="취소"><input type="button" value="삭제" onClick="delcheck()"></td>
    </tr>
</table>
</form>
</center>
</body>
</html>