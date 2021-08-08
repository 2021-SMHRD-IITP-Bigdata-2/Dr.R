package model;

public class MyrecipeDTO {

	private String myrecipe_code;
	private String myrecipe_id;
	private int myrecipe_recipe;
	
	public MyrecipeDTO(String myrecipe_code, String myrecipe_id, int myrecipe_recipe) {
		this.myrecipe_code = myrecipe_code;
		this.myrecipe_id = myrecipe_id;
		this.myrecipe_recipe = myrecipe_recipe;
	}

	public String getMyrecipe_code() {
		return myrecipe_code;
	}

	public void setMyrecipe_code(String myrecipe_code) {
		this.myrecipe_code = myrecipe_code;
	}

	public String getMyrecipe_id() {
		return myrecipe_id;
	}

	public void setMyrecipe_id(String myrecipe_id) {
		this.myrecipe_id = myrecipe_id;
	}

	public int getMyrecipe_recipe() {
		return myrecipe_recipe;
	}

	public void setMyrecipe_recipe(int myrecipe_recipe) {
		this.myrecipe_recipe = myrecipe_recipe;
	}

	@Override
	public String toString() {
		return "MyrecipeDTO [myrecipe_code=" + myrecipe_code + ", myrecipe_id=" + myrecipe_id + ", myrecipe_recipe="
				+ myrecipe_recipe + "]";
	}
	
	
	
}
