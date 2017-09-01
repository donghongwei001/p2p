package com.entity;


public class Zkjproject {
	int ID ;
	int userid ;//用户ID
	String projectname;//项目名称
	String projecttype;//项目类型
	String location;//地点
	String time;//申请时间
	double money;//申请金额
	int lifeloan;//借款期限
	double ratemoney;//利率
	String appendix;//附件
	int aduitstate;
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
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
	
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
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
	@Override
	public String toString() {
		return "Zkjproject [ID=" + ID + ", userid=" + userid + ", projectname=" + projectname + ", projecttype="
				+ projecttype + ", location=" + location + ", time=" + time + ", money=" + money + ", lifeloan="
				+ lifeloan + ", ratemoney=" + ratemoney + ", appendix=" + appendix + ", aduitstate=" + aduitstate + "]";
	}
	
}
