package com.entity;

import java.sql.Date;

public class ypgHuanK {
	private String projectname;
	private String username;
	private float money;
	private int lifeloan;
	private Date lasttime;
	private int outday;
	private int statu;
	private float ratemoney;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getProjectname() {
		return projectname;
	}
	public void setProjectname(String projectname) {
		this.projectname = projectname;
	}
	public float getMoney() {
		return money;
	}
	public void setMoney(float money) {
		this.money = money;
	}
	public int getLifeloan() {
		return lifeloan;
	}
	public void setLifeloan(int lifeloan) {
		this.lifeloan = lifeloan;
	}
	public Date getLasttime() {
		return lasttime;
	}
	public void setLasttime(Date lasttime) {
		this.lasttime = lasttime;
	}
	public int getOutday() {
		return outday;
	}
	public void setOutday(int outday) {
		this.outday = outday;
	}
	public int getStatu() {
		return statu;
	}
	public void setStatu(int statu) {
		this.statu = statu;
	}
	public float getRatemoney() {
		return ratemoney;
	}
	public void setRatemoney(float ratemoney) {
		this.ratemoney = ratemoney;
	}
	
}
