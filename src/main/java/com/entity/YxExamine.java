package com.entity;

import java.sql.Date;

public class YxExamine {
	int id;
	int userid;
	String username;
	String projectname;
	String projecttype;
	String name;
	String location;
	Date time;
	float money;
	int lifeloan;
	float ratemoney;
	String appendix;
	int aduitstate;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
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
	public String getProjecttype() {
		return projecttype;
	}
	public void setProjecttype(String projecttype) {
		this.projecttype = projecttype;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
