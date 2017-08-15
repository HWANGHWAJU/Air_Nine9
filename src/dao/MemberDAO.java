package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import JdbcUtil.JdbcUtil;
import dto.LoginUser;
import dto.memberDTO;
import dto.stampDTO;

public class MemberDAO {
	

	public boolean insertMember(Connection conn, memberDTO mdto) {
		

		String sql ="";
		PreparedStatement pstmt = null;
		int result = 0; //ȸ������ ��������
		
		try {

			sql = "insert into member(member_id, member_pw, member_kor, member_eng_lastname, member_eng_firstname, member_age, member_gender, member_birthdate, member_nationality, member_livenationality,member_phone,member_email, member_addinfo) values (?,?,?,?,?,25,?,?,?,?,?,?,?)";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, mdto.getMember_id());
			pstmt.setString(2, mdto.getMember_pw());
			pstmt.setString(3, mdto.getMember_kor());
			pstmt.setString(4, mdto.getMember_eng_lastname());
			pstmt.setString(5, mdto.getMember_eng_firstname());
			pstmt.setString(6, mdto.getMember_gender());
			pstmt.setString(7, mdto.getMember_birthdate());
			pstmt.setString(8, mdto.getMember_nationality());
			pstmt.setString(9, mdto.getMember_livenationality());
			pstmt.setString(10, mdto.getMember_phone());
			pstmt.setString(11, mdto.getMember_email());
			pstmt.setString(12, mdto.getMember_addinfo());

			result = pstmt.executeUpdate(); 
			
			
			if (result !=0) {
				return true;
			}
					
		} catch (Exception e) {
			e.printStackTrace();
			
		}finally {
			if(pstmt!=null)try{pstmt.close();}catch(SQLException ex){}
			
		}
	
		return false;
	} 

	
	public int userCheck(Connection conn, String member_id, String member_pw) {
	
		String sql = "";
		PreparedStatement pstmt = null;
		int check = -1; 
		ResultSet rs = null;
		
		try {

			sql = "select member_pw from member where member_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member_id);
			
			rs = pstmt.executeQuery();
			
		
			if (rs.next()) { 
				if (member_pw.equals(rs.getString("member_pw"))) { 
					check = 1; 
				}else { 
					check = 0; 
				}		
			}else {
				check = -1;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(rs!=null)try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null)try{pstmt.close();}catch(SQLException ex){}
		}	
		
		return check;
	}
	

	public void memberModify(Connection conn, memberDTO mdto) {
		
		
		String sql ="";
		PreparedStatement pstmt = null;
	
		System.out.println("==============Modify DAO ==============");
		
		System.out.println("Member Phone :"+mdto.getMember_phone());
		System.out.println("Member �ѱ� �̸� :"+mdto.getMember_kor());
		System.out.println("Member �̸� :"+mdto.getMember_eng_lastname());
		System.out.println("Member �� :"+mdto.getMember_eng_firstname());
		System.out.println("Member ���� :"+mdto.getMember_gender());
		System.out.println("Member ���� :"+mdto.getMember_birthdate());
		System.out.println("Member ���� :"+mdto.getMember_nationality());
		System.out.println("Member ���ֱ��� :"+mdto.getMember_livenationality());
		System.out.println("Member ���ŵ��� :"+mdto.getMember_addinfo());
		
		
		
		try {
	
			
			sql = "update member set member_kor=?, member_eng_lastname=?, member_eng_firstname=?, member_gender=?, member_birthdate=?, member_nationality=?, member_livenationality=?, member_phone=?, member_email=?, member_addinfo=? where member_id=?";
			
			pstmt = conn.prepareStatement(sql);
			
			
			pstmt.setString(1, mdto.getMember_kor());
			pstmt.setString(2, mdto.getMember_eng_lastname());
			pstmt.setString(3, mdto.getMember_eng_firstname());
			pstmt.setString(4, mdto.getMember_gender());
			pstmt.setString(5, mdto.getMember_birthdate());
			pstmt.setString(6, mdto.getMember_nationality());
			pstmt.setString(7, mdto.getMember_livenationality());
			pstmt.setString(8, mdto.getMember_phone());
			pstmt.setString(9, mdto.getMember_email());
			pstmt.setString(10, mdto.getMember_addinfo());
			pstmt.setString(11, mdto.getMember_id());
			
			System.out.println(" sql :"+sql);

			int i= pstmt.executeUpdate();
			
			System.out.println("Update :"+i);
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("memberModify()���� DB���� :"+e);
		}finally {
			if(pstmt!=null)try{pstmt.close();}catch(SQLException ex){}
		}

	}
	
	/*		로그인 유저 필요 정보 		*/
	public LoginUser getLoginUser(Connection conn, String id) throws SQLException{
		String sql="";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		System.out.println("DAO");
		
		try{
			sql = "select member_id, member_eng_lastname, member_eng_firstname, member_gender, member_email from member where member_id='"+id+"'";
			
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			LoginUser user = new LoginUser();
			
			if(rs.next()){
				user = convertUser(rs);
				System.out.println(" 로그인 User ");
				System.out.println(" In DAO  로그인 유저 정보 리턴 성공");
				return user;
			}
		}catch(Exception e){e.printStackTrace();}
		finally {JdbcUtil.close(pstmt); JdbcUtil.close(rs); }
		return null;
	}
	
	public LoginUser convertUser(ResultSet rs) throws Exception{
		return new LoginUser(rs.getString("member_id"), rs.getString("member_email"), rs.getString("member_gender"), rs.getString("member_eng_lastname"), rs.getString("member_eng_firstname"));
	}
	
	
	
	public Vector<memberDTO> getMember(Connection conn, String id) {
		
		
		//Map<key,value> map  = new HashMap<>();
		// map.put("id",member_id)
	    System.out.println("GetMember");
		
		Vector<memberDTO> v = new Vector<memberDTO>();
		
		memberDTO dto = null;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql ="";
		
		try {
			
			dto = new memberDTO();
			

			
			sql = "select * from member where member_id=?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
								
			rs = pstmt.executeQuery();
			

			if(rs.next()){ 

				dto = new memberDTO();
				
				dto.setMember_id(rs.getString(1));
				dto.setMember_pw(rs.getString(2));
				dto.setMember_kor(rs.getString(3));
				dto.setMember_eng_lastname(rs.getString(4));
				dto.setMember_eng_firstname(rs.getString(5));
				dto.setMember_gender(rs.getString(7));
				dto.setMember_birthdate(rs.getString(8));
				dto.setMember_nationality(rs.getString(9));
				dto.setMember_livenationality(rs.getString(10));
				dto.setMember_phone(rs.getString(11));
				dto.setMember_email(rs.getString(12));
				dto.setMember_addinfo(rs.getString(13));

				v.add(dto);
				System.out.println("v"+v.get(0).getMember_kor());
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("getMember()���� DB���� :"+e);
			
		}finally {
			if(rs!=null)try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null)try{pstmt.close();}catch(SQLException ex){}
	
		}	
		return v;
	}
    
	public memberDTO joinConfirm(Connection conn, String member_id) {
		memberDTO mdto = null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "";
		
		try {
		
			sql = "select * from member where member_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member_id);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				
				mdto = new memberDTO();
				mdto.setMember_id(rs.getString(1)); // ����
				mdto.setMember_kor(rs.getString(3)); // ���̵�
				
			}
		
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("joinConfirm()���� DB���� :"+e);
			
		}finally {
			if(rs!=null)try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null)try{pstmt.close();}catch(SQLException ex){}
		
		}
		
		return mdto;
	}

	
	
	
	

}
