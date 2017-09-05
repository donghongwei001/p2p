package com.entity;

public class YxFirst {
	int projectid;  // 项目id
	String projectname; //项目名称
	int firststatus; // 初次审核状态
	String firstdate; //审核日期
	String firstname; //审核人
	String firstremarks;  //备注
	int finalstatus;
	public int getProjectid() {
		return projectid;
	}
	public void setProjectid(int projectid) {
		this.projectid = projectid;
	}
	public String getProjectname() {
		return projectname;
	}
	public void setProjectname(String projectname) {
		this.projectname = projectname;
	}
	public int getFirststatus() {
		return firststatus;
	}
	public void setFirststatus(int firststatus) {
		this.firststatus = firststatus;
	}
	public String getFirstdate() {
		return firstdate;
	}
	public void setFirstdate(String firstdate) {
		this.firstdate = firstdate;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getFirstremarks() {
		return firstremarks;
	}
	public void setFirstremarks(String firstremarks) {
		this.firstremarks = firstremarks;
	}
	public int getFinalstatus() {
		return finalstatus;
	}
	public void setFinalstatus(int finalstatus) {
		this.finalstatus = finalstatus;
	}
	
	
}
