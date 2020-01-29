<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="jsp.TermProject.*"%>
<%request.setCharacterEncoding("euc-kr"); %>

    
<jsp:useBean id="jibean" class="jsp.TermProject.JoinBean"/>
<jsp:useBean id="join" class="jsp.TermProject.Join"/>
<jsp:setProperty name="join" property="*"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title></title>
</head>
<body>
<%
    String action = request.getParameter("action");
    
    if(action.equals("list")){
        response.sendRedirect("join_info.jsp");
        }
    else if(action.equals("insert")){                   
        if(jibean.insertDB(join)){
            response.sendRedirect("join_info.jsp");
        }
        else
            throw new Exception("DB입력오류");
    }
    else if(action.equals("edit")){
        Join ji = jibean.getDB(join.getJoin_num());
        if(!ji.getJoin_passwd().equals(request.getParameter("join_passwd"))){
            out.println("<script>alert('비밀번호가 틀렸습니다!!');history.go(-1);</script>");
        }
        else{
            request.setAttribute("ji", ji);
            pageContext.forward("join_edit_form.jsp");
        }
    }
    else if(action.equals("update")){
        if(jibean.updateDB(join)){
            response.sendRedirect("join_info.jsp");
        }
        else
            throw new Exception("DB 갱신오류");
    }
    else if(action.equals("delete")){
        if(jibean.deleteDB(join.getJoin_num())){
            response.sendRedirect("join_info.jsp");
        }
        else
            throw new Exception("DB 삭제오류");
    }
    else{
        out.println("<script>alert('action 파라미터를 확인해주세요!!!')</script>");
    }
%>

</body>
</html>