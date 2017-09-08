package com.entity;

public class ZxlUser {
	int userID;
	String username;
	String pwd;
	int money;
	String state;
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserid(int userid) {
		this.userID = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
}
