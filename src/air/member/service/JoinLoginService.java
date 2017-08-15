package air.member.service;

import java.sql.Connection;
import java.sql.SQLException;

import Jdbc.Connection.ConnectionProvider;
import dao.MemberDAO;
import dto.LoginUser;
import dto.memberDTO;

public class JoinLoginService {
	
	MemberDAO dao = new MemberDAO();
	
	public boolean InsertMember(memberDTO member) throws SQLException{
		
		try(Connection conn = ConnectionProvider.getConnection()){
			
			System.out.println("========= Insert Member =========");
		
			boolean result = dao.insertMember(conn, member);
			
			return result;
		}catch(Exception e){e.printStackTrace();}
		
		return false;
	}
	
	public LoginUser getLoginMember(String id, String pw) throws SQLException{
		
		try(Connection conn = ConnectionProvider.getConnection()){
			System.out.println("ID :"+id+"    PW :"+pw);
			
			conn.setAutoCommit(false);
			
			int check = dao.userCheck(conn,id,pw);
			LoginUser loginUser = dao.getLoginUser(conn, id);
			
			System.out.println(loginUser.getMember_id());
			
			conn.commit();
			return loginUser;
		}catch(Exception e){e.printStackTrace(); }
		
		return null;
	}
	
	
	
}
