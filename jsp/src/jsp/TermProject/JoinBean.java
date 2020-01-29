package jsp.TermProject;
import java.sql.*;
import java.util.*;

public class JoinBean {
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String jdbc_driver = "oracle.jdbc.driver.OracleDriver";
	String jdbc_url = "jdbc:oracle:thin:@127.0.0.1:1521";
	
	void connect() {
		try {
			Class.forName(jdbc_driver);
			conn = DriverManager.getConnection(jdbc_url,"sooyang","aaaa");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	void disconnect() {
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} 
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public boolean updateDB(Join join) {
		connect();
		
		String sql ="update join set join_id=?, join_name=?, join_nickname=?, join_passwd=?, join_job=?, join_phone1=?, join_phone2=?, join_phone3=? where join_num=?";
		
		try {
			pstmt = conn.prepareStatement(sql);	
			pstmt.setString(1,join.getJoin_id());
			pstmt.setString(2,join.getJoin_name());
			pstmt.setString(3,join.getJoin_nickname());
			pstmt.setString(4,join.getJoin_passwd());
			pstmt.setString(5,join.getJoin_job());
			pstmt.setString(6,join.getJoin_phone1());
			pstmt.setString(7,join.getJoin_phone2());
			pstmt.setString(8,join.getJoin_phone3());
			//pstmt.setString(8,joinjoin.getJi_interest());
			pstmt.setInt(9,join.getJoin_num());
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		finally {
			disconnect();
		}
		return true;
	}
	
	public boolean deleteDB(int join_num) {
		connect();
		
		String sql ="delete from join where join_num=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,join_num);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		finally {
			disconnect();
		}
		return true;
	}
	
	public boolean insertDB(Join join) {
		connect();
		
		String sql = "insert into join(join_id, join_name, join_nickname, join_passwd, join_job, join_phone1, join_phone2, join_phone3) values(?,?,?,?,?,?,?,?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,join.getJoin_id());
			pstmt.setString(2,join.getJoin_name());
			pstmt.setString(3,join.getJoin_nickname());
			pstmt.setString(4,join.getJoin_passwd());
			pstmt.setString(5,join.getJoin_job());
			pstmt.setString(6,join.getJoin_phone1());
			pstmt.setString(7,join.getJoin_phone2());
			pstmt.setString(8,join.getJoin_phone3());   
			//pstmt.setString(9,joinjoin.getJi_interest());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		finally {
			disconnect();
		}
		return true;
	}

	public Join getDB(int join_num) {
		connect();
		
		String sql = "select * from join where join_num=?";
		Join join = new Join();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,join_num);
			ResultSet rs = pstmt.executeQuery();
			
			rs.next();
			join.setJoin_num(rs.getInt("join_num"));
			join.setJoin_id(rs.getString("join_id"));
			join.setJoin_name(rs.getString("join_name"));
			join.setJoin_nickname(rs.getString("join_nickname"));
			join.setJoin_passwd(rs.getString("join_passwd"));
			join.setJoin_job(rs.getString("join_job"));
			join.setJoin_phone1(rs.getString("join_phone1"));
			join.setJoin_phone2(rs.getString("join_phone2"));
			join.setJoin_phone3(rs.getString("join_phone3"));
			//joinjoin.setJi_interest(rs.getString("join_interest"));
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return join;
	}
	
	public ArrayList getDBList() {
		connect();
		ArrayList<Join> datas = new ArrayList<Join>();
		
		String sql = "select * from join";
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				Join join = new Join();
				join.setJoin_num(rs.getInt("join_num"));
				join.setJoin_id(rs.getString("join_id"));
				join.setJoin_name(rs.getString("join_name"));
				join.setJoin_nickname(rs.getString("join_nickname"));
				join.setJoin_job(rs.getString("join_job"));
				join.setJoin_phone1(rs.getString("join_phone1"));
				join.setJoin_phone2(rs.getString("join_phone2"));
				join.setJoin_phone3(rs.getString("join_phone3"));
				//joinjoin.setJi_interest(rs.getString("join_interest"));
				datas.add(join);
			}
			rs.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return datas;
	}
}
