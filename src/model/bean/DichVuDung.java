package model.bean;

@SuppressWarnings("all")
public class DichVuDung {
	
	private int id;
	private int idm;
	private String tendichvu;
	private int dongia;
	private int soluong;
	private String trangThai;
	public DichVuDung() {
		super();
	}
	public DichVuDung(int id, int idm, String tendichvu, int dongia, int soluong, String trangThai) {
		super();
		this.id = id;
		this.idm = idm;
		this.tendichvu = tendichvu;
		this.dongia = dongia;
		this.soluong = soluong;
		this.trangThai = trangThai;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getIdm() {
		return idm;
	}
	public void setIdm(int idm) {
		this.idm = idm;
	}
	public String getTendichvu() {
		return tendichvu;
	}
	public void setTendichvu(String tendichvu) {
		this.tendichvu = tendichvu;
	}
	public int getDongia() {
		return dongia;
	}
	public void setDongia(int dongia) {
		this.dongia = dongia;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public String getTrangThai() {
		return trangThai;
	}
	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}
}
