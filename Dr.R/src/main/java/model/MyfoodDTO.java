package model;

public class MyfoodDTO {

	private int myfood_code;
	private String myfood_name;
	private String myfood_id;

	public MyfoodDTO(int myfood_code, String myfood_name, String myfood_id) {
		this.myfood_code = myfood_code;
		this.myfood_name = myfood_name;
		this.myfood_id = myfood_id;
	}

	public int getMyfood_code() {
		return myfood_code;
	}

	public void setMyfood_code(int myfood_code) {
		this.myfood_code = myfood_code;
	}

	public String getMyfood_name() {
		return myfood_name;
	}

	public void setMyfood_name(String myfood_name) {
		this.myfood_name = myfood_name;
	}

	public String getMyfood_id() {
		return myfood_id;
	}

	public void setMyfood_id(String myfood_id) {
		this.myfood_id = myfood_id;
	}

	@Override
	public String toString() {
		return "MyfoodDTO [myfood_code=" + myfood_code + ", myfood_name=" + myfood_name + ", myfood_id=" + myfood_id
				+ "]";
	}
	
	
	
}
