package com.entity;

import java.sql.Date;

public class YxExamine {
	int userid;
	String projectname;
	String projecttype;
	String location;
	Date time;
	float money;
	int lifeloan;
	float ratemoney;
	String appendix;
	int aduitstate;
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
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
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
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
	public float getRatemoney() {
		return ratemoney;
	}
	public void setRatemoney(float ratemoney) {
		this.ratemoney = ratemoney;
	}
	public String getAppendix() {
		return appendix;
	}
	public void setAppendix(String appendix) {
		this.appendix = appendix;
	}
	public int getAduitstate() {
		return aduitstate;
	}
	public void setAduitstate(int aduitstate) {
		this.aduitstate = aduitstate;
	}
	
}
