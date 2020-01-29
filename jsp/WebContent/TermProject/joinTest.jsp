<%@ page contentType="text/html;charset=euc-kr" import="java.sql.*" %>
<% request.setCharacterEncoding("euc-kr");%>

<%
    // �����ͺ��̽� ������� ���� ����
    Connection conn = null;
    PreparedStatement pstmt = null;

    // �����ͺ��̽� ������������� ���ڿ��� ����
    String jdbc_driver = "oracle.jdbc.driver.OracleDriver";
    String jdbc_url = "jdbc:oracle:thin:@127.0.0.1:1521";
    
    try{
        // JDBC ����̹� �ε�
        Class.forName(jdbc_driver);

        // �����ͺ��̽� ���������� �̿��� Connection �ν��Ͻ� Ȯ��
        conn = DriverManager.getConnection(jdbc_url,"jspbook","abcd");

        // Connection Ŭ������ �ν��Ͻ��� ���� SQL  �� �ۼ��� ���� Statement �غ�
        String sql = "insert into join values(?,?,?,?,?,?,?,?,?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1,request.getParameter("join_id"));
        pstmt.setString(2,request.getParameter("join_name"));
        pstmt.setString(3,request.getParameter("join_nickname"));
        pstmt.setString(4,request.getParameter("join_passwd"));
        pstmt.setString(5,request.getParameter("join_job"));
        pstmt.setString(6,request.getParameter("join_phone1"));
        pstmt.setString(7,request.getParameter("join_phone2")); 
        pstmt.setString(8,request.getParameter("join_phone3"));
        
        String interest[] = request.getParameterValues("interest");
        String join_interest="";
        for(int i=0; i<interest.length ;i++){
        	join_interest = join_interest +" & "+ interest[i];        	
        }       
        pstmt.setString(9,join_interest);
       
        
        // userid ���� �Է��� ��� sql ������ ����.
        if(request.getParameter("join_id") != null) {
            pstmt.executeUpdate();
        }
    }
    catch(Exception e) {
        System.out.println(e);
    }
%>
<HTML>
<HEAD><TITLE>joinTest</TITLE></HEAD>
<BODY>
<center>
<form name=form1 method=post action=join_info.jsp>
<h2>�����Է��� �Ϸ� �Ǿ����ϴ�!!</h2>
<input type=submit value="Ȯ���ϱ�">
</form>
</center>
</BODY>
</HTML>