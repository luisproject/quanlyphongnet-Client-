package model.bean;

import java.sql.Timestamp;

@SuppressWarnings("all")
public class Member {
	private int id;
	private String username;
	private String password;
	private String payment;
	private Timestamp totalTime;
	private Timestamp playTime;
	public Member() {
		super();
	}
	
	public Member(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}

	public Member(int id, String username, String password, String payment, Timestamp totalTime, Timestamp playTime) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.payment = payment;
		this.totalTime = totalTime;
		this.playTime = playTime;
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
	public Timestamp getTotalTime() {
		return totalTime;
	}
	public void setTotalTime(Timestamp totalTime) {
		this.totalTime = totalTime;
	}
	public Timestamp getPlayTime() {
		return playTime;
	}
	public void setPlayTime(Timestamp playTime) {
		this.playTime = playTime;
	}
}
