<%@ page contentType="text/html;charset=euc-kr" import="java.sql.*" %>
<% request.setCharacterEncoding("euc-kr");%>

<%
    // 데이터베이스 연결관련 변수 선언
    Connection conn = null;
    PreparedStatement pstmt = null;

    // 데이터베이스 연결관련정보를 문자열로 선언
    String jdbc_driver = "oracle.jdbc.driver.OracleDriver";
    String jdbc_url = "jdbc:oracle:thin:@127.0.0.1:1521";
    
    try{
        // JDBC 드라이버 로드
        Class.forName(jdbc_driver);

        // 데이터베이스 연결정보를 이용해 Connection 인스턴스 확보
        conn = DriverManager.getConnection(jdbc_url,"jspbook","abcd");

        // Connection 클래스의 인스턴스로 부터 SQL  문 작성을 위한 Statement 준비
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
       
        
        // userid 값을 입력한 경우 sql 문장을 수행.
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
<h2>정보입력이 완료 되었습니다!!</h2>
<input type=submit value="확인하기">
</form>
</center>
</BODY>
</HTML>