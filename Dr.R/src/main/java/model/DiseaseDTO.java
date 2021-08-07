package model;

public class DiseaseDTO {
	private String dis_id;
	private String dis_dang;
	private String dis_go;
	private String dis_we;
	private String dis_ho;
	private int dis_no;
	
	public DiseaseDTO(String dis_id, String dis_dang, String dis_go, String dis_we, String dis_ho, int dis_no) {
		this.dis_id = dis_id;
		this.dis_dang = dis_dang;
		this.dis_go = dis_go;
		this.dis_we = dis_we;
		this.dis_ho = dis_ho;
		this.dis_no = dis_no;
	}

	public String getDis_id() {
		return dis_id;
	}

	public void setDis_id(String dis_id) {
		this.dis_id = dis_id;
	}

	public String getDis_dang() {
		return dis_dang;
	}

	public void setDis_dang(String dis_dang) {
		this.dis_dang = dis_dang;
	}

	public String getDis_go() {
		return dis_go;
	}

	public void setDis_go(String dis_go) {
		this.dis_go = dis_go;
	}

	public String getDis_we() {
		return dis_we;
	}

	public void setDis_we(String dis_we) {
		this.dis_we = dis_we;
	}

	public String getDis_ho() {
		return dis_ho;
	}

	public void setDis_ho(String dis_ho) {
		this.dis_ho = dis_ho;
	}

	public int getDis_no() {
		return dis_no;
	}

	public void setDis_no(int dis_no) {
		this.dis_no = dis_no;
	}

	@Override
	public String toString() {
		return "DiseaseDTO [dis_id=" + dis_id + ", dis_dang=" + dis_dang + ", dis_go=" + dis_go + ", dis_we=" + dis_we
				+ ", dis_ho=" + dis_ho + ", dis_no=" + dis_no + "]";
	}
	
	
}
