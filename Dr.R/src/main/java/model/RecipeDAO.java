package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class RecipeDAO {

	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;

	private int cnt;

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

	// ��� ������ ���� DAO
	public ArrayList<RecipeDTO> all_recipe() {

		ArrayList<RecipeDTO> list = new ArrayList<RecipeDTO>();

		try {

			connection();

			// 3. ������ ����
			String sql = "select * from Recipe order by racipe_name";

			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {
				int getrecipe_code = rs.getInt(1);
				String getrecipe_name = rs.getString(2);
				String getrecipe_method = rs.getString(3);
				String getrecipe_food = rs.getString(4);
				String getrecipe_img = rs.getString(5);
				String getrecipe_cook1 = rs.getString(6);
				String getrecipe_cook2 = rs.getString(7);

				RecipeDTO recipe = new RecipeDTO(getrecipe_code, getrecipe_name, getrecipe_method, getrecipe_food,
						getrecipe_img, getrecipe_cook1, getrecipe_cook2);
				list.add(recipe);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally { // ������������ ����Ǵ� finally
			close();
		} // end finally
		return list;
	}

	public RecipeDTO search_recipe(String name) {

		RecipeDTO recipe = null;

		try {

			connection();

			String sql = "select * from Recipe where recipe_name = ?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, name);
			rs = psmt.executeQuery();

			if (rs.next()) {
				int getrecipe_code = rs.getInt(1);
				String getrecipe_name = rs.getString(2);
				String getrecipe_method = rs.getString(3);
				String getrecipe_food = rs.getString(4);
				String getrecipe_img = rs.getString(5);
				String getrecipe_cook1 = rs.getString(6);
				String getrecipe_cook2 = rs.getString(7);

				recipe = new RecipeDTO(getrecipe_code, getrecipe_name, getrecipe_method, getrecipe_food, getrecipe_img,
						getrecipe_cook1, getrecipe_cook2);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally { // ������������ ����Ǵ� finally
			close();
		} // end finally
		return recipe;
	}

	// �ش� ������ ���õ� ������ DAO
	public ArrayList<RecipeDTO> recipe_food(String name) {

		ArrayList<RecipeDTO> list = new ArrayList<RecipeDTO>();

		try {
			connection();

			// 3. ������ ����
			if (name.length() == 1) {
				
			
			if (name.equals("��") || name.equals("��")) {
				String sql = "select * from recipe where recipe_food like ? or recipe_food like ? or recipe_food like ? or recipe_food like ? order by recipe_name";

				PreparedStatement psmt = conn.prepareStatement(sql);
				String name1 = '%' + name + "(" + '%';
				String name2 = name + " " + '%';
				String name3 = '��' + name + " " + '%';
				String name4 = '��' + name + "(" + '%';
				psmt.setString(1, name1);
				psmt.setString(2, name2);
				psmt.setString(3, name3);
				psmt.setString(4, name4);
				rs = psmt.executeQuery();
			}else {
				String sql = "select * from recipe where recipe_food like ? or recipe_food like ? or recipe_food like ? or recipe_food like ? order by recipe_name";

				PreparedStatement psmt = conn.prepareStatement(sql);
				String name1 = '%' + name + "(" + '%';
				String name2 = name + " " + '%';
				psmt.setString(1, name1);
				psmt.setString(2, name2);
				rs = psmt.executeQuery();
				
			}}else{
				String sql = "select * from recipe where recipe_food like ? or recipe_food like ? order by recipe_name";

				PreparedStatement psmt = conn.prepareStatement(sql);
				String name1 = '%' + name + "(" + '%';
				String name2 = '%' + name + " " + '%';
				psmt.setString(1, name1);
				psmt.setString(2, name2);
				rs = psmt.executeQuery();
			}

			while (rs.next()) {
				int getrecipe_code = rs.getInt(1);
				String getrecipe_name = rs.getString(2);
				String getrecipe_method = rs.getString(3);
				String getrecipe_food = rs.getString(4);
				String getrecipe_img = rs.getString(5);
				String getrecipe_cook1 = rs.getString(6);
				String getrecipe_cook2 = rs.getString(7);

				RecipeDTO recipe = new RecipeDTO(getrecipe_code, getrecipe_name, getrecipe_method, getrecipe_food,
						getrecipe_img, getrecipe_cook1, getrecipe_cook2);
				list.add(recipe);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			close();

		} // end finally

		return list;
	}

}
