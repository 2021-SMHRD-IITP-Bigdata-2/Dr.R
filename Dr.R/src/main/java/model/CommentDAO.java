package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CommentDAO {

	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	private int cnt;
	
	public void connection() {
		//1. ����Ŭ ����̹� ���� �ε�
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//2. �����ͺ��̽� ����
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
		//4. �����ͺ��̽� ��������
		try {
			if(rs != null) rs.close();
			if(psmt != null) psmt.close();
			if(conn != null) conn.close();
				
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public int comment_insert(CommentDTO comment) {
		try {
			connection();
			
			//3. ������ ����
			String sql = "insert into comments values(cmt_num.nextval, ?, ?, sysdate)";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, comment.getCmt_id());
			psmt.setString(2, comment.getCmt_content());
					
			cnt = psmt.executeUpdate(); //���� Update()
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
				
			close();
				
		}//end finally
		return cnt;
	}
	
	public ArrayList<CommentDTO> comment_select(int code) {
		//������ �� �޼������� ������ �� �ִ� ArrayList��ü ����
				ArrayList<CommentDTO> list = new ArrayList<CommentDTO>();
				
				try {
					
					connection();
					
					//3. ������ ����
					String sql = "select cmt_content, cmt_time, cmt_recipe, cmt_id from comments where cmt_code=?";
//					select cmt_content, cmt_time, cmt_id from comments where cmt_recipe = �������ڵ�;
//					insert into comments values(cmt_num.nextval, ��۳���, sysdate, �������ڵ�, ȸ�����̵�);
					
					psmt = conn.prepareStatement(sql);
					psmt.setInt(1, code);
					
					rs = psmt.executeQuery();
					
					while(rs.next()) {
						String getContent = rs.getString(1);
						String getSendDate = rs.getString(2);
						int recipe = rs.getInt(3);
						String getcmt_id = rs.getString(4);
						
						CommentDTO comment = new CommentDTO((Integer) null, getContent, getSendDate, recipe, getcmt_id);
						
						list.add(comment);
					}
					
				} catch (SQLException e) {
					e.printStackTrace();
				} finally {
						
					close();
						
				}//end finally
				
				return list;
	}
	
}
