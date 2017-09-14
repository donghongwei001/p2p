package com.entity;

public class Zkjprojectment {
	
	 int id;
	 String projectname;
	 String projecttype;
	 String location;
	 double money;
	 double ratemoney;
	 int lifeloan;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProjectname() {
		return projectname;
	}
	public void setProjectname(String projectname) {
		this.projectname = projectname;
	}
	public String getProjecttype() {
		return projecttype;
	}
	public void setProjecttype(String projecttype) {
		this.projecttype = projecttype;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public double getMoney() {
		return money;
	}
	public void setMoney(double money) {
		this.money = money;
	}
	public int getLifeloan() {
		return lifeloan;
	}
	public void setLifeloan(int lifeloan) {
		this.lifeloan = lifeloan;
	}
	public double getRatemoney() {
		return ratemoney;
	}
	public void setRatemoney(double ratemoney) {
		this.ratemoney = ratemoney*100;
	}
	 
}
