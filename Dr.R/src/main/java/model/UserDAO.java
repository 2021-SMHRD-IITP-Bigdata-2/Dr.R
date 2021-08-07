package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {

	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;

	private int cnt;

	// �����ͺ��̽� �������, ������
	public void connection() {
		try {
			// 1.����Ŭ ����̹� ���� �ε� = �����Ҷ� ã�ư��ٴ� ��
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// 2.�����ͺ��̽� ����
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "hr";
			String password = "hr";

			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public void close() {
		// 4. �����ͺ��̽� ��������
		try {

			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public UserDTO user_login(String u_id, String u_pw) {
		
		UserDTO user = null;
		
		try {
			connection();
			
			// ������ ����
			String sql = "select u_email, u_name, u_sex from USERS where u_id=? and u_pw=?";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, u_id);
			psmt.setString(2, u_pw);
			
			// DB���� ��ȸ�� �����͸� rs��ü�� ����
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				String getEmail = rs.getString(1);
				String getName = rs.getString(2);
				int getSex = rs.getInt(3);
				
				//ȸ�������� ������ �� �ִ� ��ü ����
				user = new UserDTO(u_id, u_pw, getEmail, getName, getSex);
				
			}else {
				System.out.println("���� ��ȸ ����");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return user;
	}


}
