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
		//1. 오라클 드라이버 동적 로딩
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//2. 데이터베이스 연동
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
		//4. 데이터베이스 연결종료
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
			
			//3. 쿼리문 실행
			String sql = "insert into comments values(cmt_num.nextval, ?, ?, sysdate)";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, comment.getCmt_id());
			psmt.setString(2, comment.getCmt_content());
					
			cnt = psmt.executeUpdate(); //변경 Update()
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
				
			close();
				
		}//end finally
		return cnt;
	}
	
	public ArrayList<CommentDTO> comment_select(String id) {
		//나에게 온 메세지들을 저장할 수 있는 ArrayList객체 생성
				ArrayList<CommentDTO> list = new ArrayList<CommentDTO>();
				
				try {
					
					connection();
					
					//3. 쿼리문 실행
					String sql = "select num, send_name, content, sendDate from web_message where receive_email=?";
					
					psmt = conn.prepareStatement(sql);
					psmt.setString(1, id);
					
					rs = psmt.executeQuery();
					
					while(rs.next()) {
						
						int getNum = rs.getInt(1);
						String getSend_name = rs.getString(2);
						String getContent = rs.getString(3);
						String getSendDate = rs.getString(4);
						
//						CommentDTO message = new CommentDTO();
						
//						list.add(message);
					}
					
				} catch (SQLException e) {
					e.printStackTrace();
				} finally {
						
					close();
						
				}//end finally
				
				return list;
	}
	
}
