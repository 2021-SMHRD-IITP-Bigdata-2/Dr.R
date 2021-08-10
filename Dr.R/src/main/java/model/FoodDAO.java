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
				String getImage = rs.getString(3);
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

	public ArrayList<FoodDTO> all_food() {

		ArrayList<FoodDTO> list = new ArrayList<FoodDTO>();

		try {

			connection();

			// 3. ������ ����
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
		} finally { // ������������ ����Ǵ� finally
			close();
		} // end finally
		return list;
	}

	public ArrayList<FoodDTO> food_dang() {

		ArrayList<FoodDTO> list = new ArrayList<FoodDTO>();

		try {
			connection();

			// 3. ������ ����
			String sql = "select distinct food_name, food_content, food_image, food_good from food where food_good like '%�索%' order by food_name";

			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();

			while (rs.next()) {
				String food_name = rs.getString(1);
				String food_content = rs.getString(2);
				String food_image = rs.getString(3);
				String food_good = rs.getString(4);

				FoodDTO food = new FoodDTO(food_name, food_content, food_image, food_good);

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

			// 3. ������ ����
			String sql = "select distinct food_name, food_content, food_image, food_good from food where food_good like '%������%' order by food_name";

			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();

			while (rs.next()) {
				String food_name = rs.getString(1);
				String food_content = rs.getString(2);
				String food_image = rs.getString(3);
				String food_good = rs.getString(4);

				FoodDTO food = new FoodDTO(food_name, food_content, food_image, food_good);

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

			// 3. ������ ����
			String sql = "select distinct food_name, food_content, food_image, food_good from food where food_good like '%����%' order by food_name";

			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();

			while (rs.next()) {
				String food_name = rs.getString(1);
				String food_content = rs.getString(2);
				String food_image = rs.getString(3);
				String food_good = rs.getString(4);

				FoodDTO food = new FoodDTO(food_name, food_content, food_image, food_good);

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

			// 3. ������ ����
			String sql = "select distinct food_name, food_content, food_image, food_good from food where food_good like '%ȣ���%' order by food_name";

			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();

			while (rs.next()) {
				String food_name = rs.getString(1);
				String food_content = rs.getString(2);
				String food_image = rs.getString(3);
				String food_good = rs.getString(4);

				FoodDTO food = new FoodDTO(food_name, food_content, food_image, food_good);

				list.add(food);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			close();

		} // end finally

		return list;
	}

	// ��ö���� ������ ����ϴ� DAO

	public FoodDTO seasonal_food(int MONTH) {

		ArrayList<FoodDTO> list = new ArrayList<FoodDTO>();
		FoodDTO season = null;

		try {
			connection();

			// 3. ������ ����

			String sql = "select * from food where FOOD_MONTH = ?";
			psmt = conn.prepareStatement(sql);

			psmt.setInt(1, MONTH);
			rs = psmt.executeQuery();

			while (rs.next()) {
				int FOOD_CODE = rs.getInt("FOOD_CODE");
				String FOOD_NAME = rs.getString("FOOD_NAME");
				String FOOD_CONTENT = rs.getString("FOOD_CONTENT");
				String FOOD_IMAGE = rs.getString("FOOD_IMAGE");
				int FOOD_MONTH = rs.getInt("FOOD_MONTH");
				String FOOD_GOOD = rs.getString("FOOD_GOOD");

				FoodDTO food = new FoodDTO(FOOD_CODE, FOOD_NAME, FOOD_CONTENT, FOOD_IMAGE, FOOD_MONTH, FOOD_GOOD);

				list.add(food);
			}

			season = list.get(list.size() / 2 - 1);

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			close();

		} // end finally

		return season;
	}

	public ArrayList<FoodDTO> food_custom(ArrayList<String> arr) {
		ArrayList<FoodDTO> list = new ArrayList<>();

		int size = arr.size() - 2;
		String[] con = { "and", "and", "and" };
//		if(size==2)
//			con[0] = "or";
//		else if(size==3)
//			con[1] = "or";

		while (size >= 0) {
			con[size] = "or";
			size -= 1;
		}

		for (int i = 0; i < con.length; i++) {
			System.out.println(con[i]);
		}
		for (int i = 0; i < arr.size(); i++) {
			System.out.println(arr.get(i));
		}
		try {
			connection();

			String sql = "select distinct food_name, food_good, food_content, food_image from food where food_good like ? " + con[0] + " food_good like ? " + con[1] + " food_good like ? " + con[2] + " food_good like ?";

			psmt = conn.prepareStatement(sql);
			
//			psmt.setString(1, "");
//			psmt.setString(3, "");
//			psmt.setString(5, "");
//			psmt.setString(7, "");
//			psmt.setString(2, con[0]);
//			psmt.setString(4, con[1]);
//			psmt.setString(6, con[2]);
			
			int num = 1;
			
			for (int i = 0; i < arr.size(); i ++) {
				String good = '%'+arr.get(i)+'%';
				psmt.setString(num, good);
				num += 1;
			}
			for(int i = num; i <= 4; i++) {
				String a = '%'+""+'%';
				psmt.setString(i, a);
			}

			rs = psmt.executeQuery();

			while (rs.next()) {
				String food_name = rs.getString(1);
				String food_good = rs.getString(2);
				String food_content = rs.getString(3);
				String food_image = rs.getString(4);

				FoodDTO food = new FoodDTO(food_name, food_content, food_image, food_good);

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
