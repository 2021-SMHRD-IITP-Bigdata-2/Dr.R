package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MyfoodDAO {

	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;

	private int cnt;

	// 데이터베이스 연동기능, 종료기능
	public Connection connection() {
		try {
			conn = null;
			// 1.오라클 드라이버 동적 로딩 = 실행할때 찾아간다는 뜻
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// 2.데이터베이스 연동
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
		// 4. 데이터베이스 연결종료
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

	public String[] select_not(String id) {
		
		String[] list = new String[5];
		
		try {

			connection();

			String sql = "select myfood_not1, myfood_not2, myfood_not3, myfood_not4, myfood_not5 from MYFOOD where myfood_id = ? ";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			
			rs = psmt.executeQuery();

			if (rs.next()) {
				list[1] = rs.getString(1);
				list[2] = rs.getString(2);
				list[3] = rs.getString(3);
				list[4] = rs.getString(4);
				list[5] = rs.getString(5);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally { 
			close();
		}
		return list;
	}
	
	
}