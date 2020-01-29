<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="jsp.guestbook.*"%>
<%request.setCharacterEncoding("euc-kr"); %>

<jsp:useBean id="gb" class="jsp.guestbook.GuestBean"/>
<jsp:useBean id="guestbook" class="jsp.guestbook.GuestBook"/>
<jsp:setProperty name="guestbook" property="*"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>
<body>
<%
    String action = request.getParameter("action");
    
    if(action.equals("list")){
        response.sendRedirect("guestbook_list.jsp");
        }
    else if(action.equals("insert")){
    	if(gb.insertDB(guestbook)){
    		response.sendRedirect("guestbook_list.jsp");
    	}
    	else
    		throw new Exception("DB�Է¿���");
    }
    else if(action.equals("edit")){
    	GuestBook gbook = gb.getDB(guestbook.getGb_id());
    	if(!gbook.getGb_passwd().equals(request.getParameter("upasswd"))){
    		out.println("<script>alert('��й�ȣ�� Ʋ�Ƚ��ϴ�!!');history.go(-1);</script>");
    	}
    	else{
    		request.setAttribute("gbook", gbook);
    		pageContext.forward("guestbook_edit_form.jsp");
    	}
    }
    else if(action.equals("update")){
    	if(gb.updateDB(guestbook)){
    		response.sendRedirect("guestbook_list.jsp");
    	}
    	else
    		throw new Exception("DB ���ſ���");
    }
    else if(action.equals("delete")){
    	if(gb.deleteDB(guestbook.getGb_id())){
    		response.sendRedirect("guestbook_list.jsp");
    	}
    	else
    		throw new Exception("DB ��������");
    }
    else{
    	out.println("<script>alert('action �Ķ���͸� Ȯ�����ּ���!!!')</script>");
    }
%>


</body>
</html>