package com.entity;

public class ZxlTouzi {
	int id;
	String projectid;//项目id
	String projectname;//项目名称
	String username;//用户名
	String personalname;//姓名
	String money;//所需金额
	String lifeloan;//借款期限
	double ratemoney;//利率
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProjectid() {
		return projectid;
	}
	public void setProjectid(String projectid) {
		this.projectid = projectid;
	}
	public String getUsername() {
		return username;
	}
	public String getProjectname() {
		return projectname;
	}
	public void setProjectname(String projectname) {
		this.projectname = projectname;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPersonalname() {
		return personalname;
	}
	public void setPersonalname(String personalname) {
		this.personalname = personalname;
	}
	public String getMoney() {
		return money;
	}
	public void setMoney(String money) {
		this.money = money;
	}
	public String getLifeloan() {
		return lifeloan;
	}
	public void setLifeloan(String lifeloan) {
		this.lifeloan = lifeloan;
	}
	public double getRatemoney() {
		return ratemoney;
	}
	public void setRatemoney(double ratemoney) {
		this.ratemoney = ratemoney*100;
	}
}
