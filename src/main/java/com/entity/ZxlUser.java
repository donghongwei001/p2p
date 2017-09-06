package com.entity;

public class ZxlUser {
	int userID=1;
	String username;
	String pwd;
	int money;
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
