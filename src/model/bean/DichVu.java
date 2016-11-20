package model.bean;

@SuppressWarnings("all")
public class DichVu {
	
	private int id;
	private String tenDichVu;
	private int donGia;
	private String donVi;
	private int soLuong;
	
	public DichVu() {
		super();
	}
	public DichVu(int id, String tenDichVu, int donGia, String donVi, int soLuong) {
		super();
		this.id = id;
		this.tenDichVu = tenDichVu;
		this.donGia = donGia;
		this.donVi = donVi;
		this.soLuong = soLuong;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTenDichVu() {
		return tenDichVu;
	}
	public void setTenDichVu(String tenDichVu) {
		this.tenDichVu = tenDichVu;
	}
	public int getDonGia() {
		return donGia;
	}
	public void setDonGia(int donGia) {
		this.donGia = donGia;
	}
	public String getDonVi() {
		return donVi;
	}
	public void setDonVi(String donVi) {
		this.donVi = donVi;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
}
