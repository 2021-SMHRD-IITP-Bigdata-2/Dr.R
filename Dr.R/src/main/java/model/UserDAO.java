package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

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

	   // ȸ�� ���� ����
	   public int User_update(UserDTO update_User) {

	      try {
	         connection();
	         
	         // 3. ������ ����
//	         String sql = "update USERS "
//	               + "set U_name=?, U_pw=?"
//	               + "where U_id=? and U_email=? and U_sex=?";
	         String sql = "update users set u_name=?, u_pw=?, u_dang=?, u_go=?, u_we=?, u_ho=?, u_no=? where u_id=? and u_email=?";
	         
	         psmt = conn.prepareStatement(sql);
	         psmt.setString(1, update_User.getU_name());
	         psmt.setString(2, update_User.getU_pw());
	         psmt.setInt(3, update_User.getU_dang());
	         psmt.setInt(4, update_User.getU_go());
	         psmt.setInt(5, update_User.getU_we());
	         psmt.setInt(6, update_User.getU_ho());
	         psmt.setInt(7, update_User.getU_no());
	         psmt.setString(8, update_User.getU_id());
	         psmt.setString(9, update_User.getU_email());
	         cnt = psmt.executeUpdate();
	  
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         close();
	      }
	      return cnt;
	   }
	   
//	   // ���� ����
//	   public int Disease_update(DiseaseDTO update_Disease) {
//	      
//	      try {
//	         connection();
//	         
//	         String sql = "update Disease "
//	               + "set dis_dang=?, dis_go=?,"
//	               + "dis_we=?, dis_ho=?, dis_no=?"
//	               + "where dis_id=?";
//	         
//	         psmt = conn.prepareStatement(sql);
//	         psmt.setString(1, update_Disease.getDis_dang());
//	         psmt.setString(2, update_Disease.getDis_go());
//	         psmt.setString(3, update_Disease.getDis_we());
//	         psmt.setString(4, update_Disease.getDis_ho());
//	         psmt.setInt(5, update_Disease.getDis_no());
//	         psmt.setString(5, update_Disease.getDis_id());
//	         cnt = psmt.executeUpdate();
//	         
//	      } catch (SQLException e) {
//	         e.printStackTrace();
//	      } finally {
//	         close();
//	      }
//	      return cnt;
//	   }
//	   
	   
	   // ȸ�� ���� ���������� ��� üũ
	   public int User_update_check(String u_id, String u_pw) {

	      try {
	    	  
	    	 
	         connection();
	         
	         // 3. ������ ����
	         String sql = "select u_pw from Users where u_id=?";
	         
	         psmt = conn.prepareStatement(sql);
	         psmt.setString(1, u_id);
	         rs = psmt.executeQuery();
	      
	         if(rs.next()) {
	        	 cnt = 1;
	         }
	         else
	        	 cnt = 0;
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally { // ������������ ����Ǵ� finally
	         close();
	      }// end finally
	      return cnt;
	   }

	   
	   // ȸ�� Ż��
	   public int User_delete(String u_id) {
	      try {
	         connection();
	               
	         String sql = "delete from Users where u_id =?";
	         
	         psmt = conn.prepareStatement(sql);
	         psmt.setString(1, u_id);
	         cnt = psmt.executeUpdate();
	      
	      } catch (SQLException e) {
	         e.printStackTrace();
	         System.out.println("User_delete err:" + e);
	         e.printStackTrace();
	      } finally {

	         close();
	            
	         }
	      
	      
	      return cnt;
	   }

	   // ȸ�� Ż�� ��й�ȣ Ȯ��
	   public int User_delete_check(String id, String pw) {
	      try {
	         connection();
	         
	         String sql = "select u_pw from Users where u_id =?";
	         
	         psmt = conn.prepareStatement(sql);
	         psmt.setString(1, id);
	         rs = psmt.executeQuery();
	         
	         // ��� ��ġ
	         if (rs.next()) {
	            String u_pw = rs.getString(1);
	            if(u_pw.equals(pw))
	               cnt = 1;
	         
	            // ��� ����ġ
	         }else {
	            cnt = 0;
	            System.out.println("��й�ȣ ����ġ");
	         }
	         
	      } catch (SQLException e) {
	         e.printStackTrace();
	         System.out.println("User_delete_check err:" + e);
	         e.printStackTrace();
	      } finally {

	         close();
	            
	         }
	      return cnt;
	   }
	   
	   
	public UserDTO user_login(String u_id, String u_pw) {

		UserDTO user = null;

		try {
			connection();

			// ������ ����
			String sql = "select u_email, u_name, u_sex, u_dang, u_go, u_we, u_ho, u_no from USERS where u_id=? and u_pw=?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, u_id);
			psmt.setString(2, u_pw);

			// DB���� ��ȸ�� �����͸� rs��ü�� ����
			rs = psmt.executeQuery();

			if (rs.next()) {
				String getEmail = rs.getString(1);
				String getName = rs.getString(2);
				int getSex = rs.getInt(3);
				int getDang = rs.getInt(4);
				int getGo = rs.getInt(5);
				int getWe = rs.getInt(6);
				int getHo = rs.getInt(7);
				int getNo = rs.getInt(8);

				// ȸ�������� ������ �� �ִ� ��ü ����
				user = new UserDTO(u_id, u_pw, getEmail, getName, getSex, getDang, getGo, getWe, getHo, getNo);

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
