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

	public ArrayList<FoodDTO> season_food(int month) {

		ArrayList<FoodDTO> list = new ArrayList<FoodDTO>();

		try {

			connection();

			// 3. 쿼리문 실행
			String sql = "select food_code, food_name, food_image, food_good from Food where food_month=? order by food_name";

			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, month);
			rs = psmt.executeQuery();

			while (rs.next()) {
				int getFoodCode = rs.getInt(1);
				String getName = rs.getString(2);
				String getImage = rs.getString(3);
				String getGood = rs.getString(4);

				FoodDTO food = new FoodDTO(getFoodCode, getName, getImage, getGood);
				list.add(food);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally { // 무조건적으로 실행되는 finally
			close();
		} // end finally
		return list;
	}


	public ArrayList<FoodDTO> all_food() {

		ArrayList<FoodDTO> list = new ArrayList<FoodDTO>();

		try {

			connection();

			// 3. 쿼리문 실행
			String sql = "select * from Food order by food_name";

			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {
				int getFoodCode = rs.getInt(1);
				String getName = rs.getString(2);
				String getContent = rs.getString(3);
				String getImage = rs.getString(4);
				int getMonth = rs.getInt(5);
				String getGood = rs.getString(6);

				FoodDTO food = new FoodDTO(getFoodCode, getName, getContent, getImage, getMonth, getGood);
				list.add(food);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally { // 무조건적으로 실행되는 finally
			close();
		} // end finally
		return list;
	}



	public ArrayList<FoodDTO> food_dang() {

		ArrayList<FoodDTO> list = new ArrayList<FoodDTO>();

		try {
			connection();

			// 3. 쿼리문 실행
			String sql = "select distinct food_name, food_content, food_image from food where food_good like '%당뇨%' order by food_name";

			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();

			while (rs.next()) {
				String food_name = rs.getString(1);
				String food_content = rs.getString(2);
				String food_image = rs.getString(3);

				FoodDTO food = new FoodDTO(food_name, food_content, food_image);

				list.add(food);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			close();

		} // end finally

		return list;
	}

	public ArrayList<FoodDTO> food_go() {

		ArrayList<FoodDTO> list = new ArrayList<FoodDTO>();

		try {
			connection();

			// 3. 쿼리문 실행
			String sql = "select distinct food_name, food_content, food_image from food where food_good like '%고혈압%' order by food_name";

			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();

			while (rs.next()) {
				String food_name = rs.getString(1);
				String food_content = rs.getString(2);
				String food_image = rs.getString(3);

				FoodDTO food = new FoodDTO(food_name, food_content, food_image);

				list.add(food);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			close();

		} // end finally

		return list;
	}

	public ArrayList<FoodDTO> food_we() {

		ArrayList<FoodDTO> list = new ArrayList<FoodDTO>();

		try {
			connection();

			// 3. 쿼리문 실행
			String sql = "select distinct food_name, food_content, food_image from food where food_good like '%위장%' order by food_name";

			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();

			while (rs.next()) {
				String food_name = rs.getString(1);
				String food_content = rs.getString(2);
				String food_image = rs.getString(3);

				FoodDTO food = new FoodDTO(food_name, food_content, food_image);

				list.add(food);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			close();

		} // end finally

		return list;
	}

	public ArrayList<FoodDTO> food_ho() {

		ArrayList<FoodDTO> list = new ArrayList<FoodDTO>();

		try {
			connection();

			// 3. 쿼리문 실행
			String sql = "select distinct food_name, food_content, food_image from food where food_good like '%호흡기%' order by food_name";

			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();

			while (rs.next()) {
				String food_name = rs.getString(1);
				String food_content = rs.getString(2);
				String food_image = rs.getString(3);

				FoodDTO food = new FoodDTO(food_name, food_content, food_image);

				list.add(food);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			close();

		} // end finally

		return list;
	}

}
