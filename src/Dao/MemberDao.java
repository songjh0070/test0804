package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class MemberDao {
	
	public int MemberLogin(String id, String pw){
		
		Connection conn = null;
		try {
			conn = DBConnection.getConnection();
		
			String sql = "select pw from member where id =?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				if(rs.getString(1).equals(pw)) {
					return 1;
				}else {
					return 0;
				}
			}
			rs.close();
			pstmt.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return -2;
		
	}
	
	public void NewMember(String id, String pw, String name){
		
		Connection conn = null;
		try {
			conn = DBConnection.getConnection();
			
			String sql = "insert into member (id,pw,name) values(?,?,?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public int Pluspoint(){
		
		Connection conn = null;
		try {
			conn = DBConnection.getConnection();
			
			String sql = "update member set point = ?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return 1;
	}
	
	public void member(String pw){
		
		Connection conn = null;
		try {
			conn = DBConnection.getConnection();
			
			String sql = "select * from member where pw=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				String mid = rs.getString("id");
				String mpw = rs.getString("pw");
				String name = rs.getString("name");
				int point = rs.getInt("point");
				
			}
			
			
			pstmt.close();
			conn.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
}
