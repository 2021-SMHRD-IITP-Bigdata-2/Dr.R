package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class FoodDAO {

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

	public ArrayList<FoodDTO> season_food(int month) {
		
		ArrayList<FoodDTO> list = new ArrayList<FoodDTO>();
		
		try {

			connection();

			// 3. ������ ����
			String sql = "select food_code, food_name, food_image, food_good from Food where food_month=? order by food_name";

			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, month);
			rs = psmt.executeQuery();

			while (rs.next()) {
				int getFoodCode = rs.getInt(1);
				String getName = rs.getString(2);
				String getImage= rs.getString(3);
				String getGood = rs.getString(4);
				
				FoodDTO food = new FoodDTO(getFoodCode, getName, getImage, getGood);
				list.add(food);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally { // ������������ ����Ǵ� finally
			close();
		} // end finally
		return list;
	}

}
