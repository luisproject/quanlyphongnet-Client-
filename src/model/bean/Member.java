package model.bean;

import java.sql.Timestamp;

@SuppressWarnings("all")
public class Member {
	private int id;
	private String username;
	private String password;
	private String payment;
	public Member() {
		super();
	}
	public Member(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
	public Member(int id, String username, String password, String payment) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.payment = payment;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
}
