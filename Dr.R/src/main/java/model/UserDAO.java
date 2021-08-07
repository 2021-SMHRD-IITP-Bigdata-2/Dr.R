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
	public Connection connection() {
		try {
			conn = null;
			// 1.����Ŭ ����̹� ���� �ε� = �����Ҷ� ã�ư��ٴ� ��
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// 2.�����ͺ��̽� ����
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String user = "cgi_3_3";
			String password = "smhrd3";

			conn = DriverManager.getConnection(url, user, password);

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;

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

			if (rs.next()) {
				String getEmail = rs.getString(1);
				String getName = rs.getString(2);
				int getSex = rs.getInt(3);

				// ȸ�������� ������ �� �ִ� ��ü ����
				user = new UserDTO(u_id, u_pw, getEmail, getName, getSex);

			} else {
				System.out.println("���� ��ȸ ����");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return user;
	}

	public int confirmID(String userid) {
		int cnt = -1;
		String sql = "select U_ID from USERS where U_ID=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = connection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				cnt = 1;
				// ���̵� �ߺ��Ǵ� ��� 1����
			} else {
				cnt = -1;
				// ��밡���� ���̵��� ��� -1����
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return cnt;
		// �ߺ��Ǹ� 1���
		// �ߺ��ȵǸ� -1��� = ��밡���� ���
	}

	public int confirmEmail(String useremail) {
		int cnt = -1;
		String sql = "select U_EMAIL from USERS where U_EMAIL=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = connection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, useremail);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				cnt = 1;
				// ���̵� �ߺ��Ǵ� ��� 1����
			} else {
				cnt = -1;
				// ��밡���� ���̵��� ��� -1����
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return cnt;
		// �ߺ��Ǹ� 1���
		// �ߺ��ȵǸ� -1��� = ��밡���� ���
	}

	public int insertUser(UserDTO uDto) {
		int cnt = -1;
		// ���̵�, ��й�ȣ, �̸���, �г���, ����

		try {
			conn = connection();

			String sql = "insert into USERS values(?, ?, ?, ?, ?)";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, uDto.getU_id());
			psmt.setString(2, uDto.getU_pw());
			psmt.setString(3, uDto.getU_email());
			psmt.setString(4, uDto.getU_name());
			psmt.setInt(5, uDto.getU_sex()); // ���ڸ� 1 ���ڸ� 0

			cnt = psmt.executeUpdate();
			// ���� ������ �� result == 1
			// �ƴϸ� -1

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;
	}

}
