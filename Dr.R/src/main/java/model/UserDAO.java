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

	// 데이터베이스 연동기능, 종료기능
	public void connection() {
		try {
			// 1.오라클 드라이버 동적 로딩 = 실행할때 찾아간다는 뜻
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// 2.데이터베이스 연동
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

	
	
	
	
}
