package com.entity;

import java.util.Date;

public class YxFirsttable {
	int projectid;  // 项目id
	int firststatus; // 审核状态
	String firstdate; //审核日期
	String firstname; //审核人
	String firstremarks;  //备注
	public int getProjectid() {
		return projectid;
	}
	public void setProjectid(int projectid) {
		this.projectid = projectid;
	}
	public int getFirststatus() {
		return firststatus;
	}
	public void setFirststatus(int firststatus) {
		this.firststatus = firststatus;
	}
	
	public String getFirstname() {
		return firstname;
	}
	public String getFirstdate() {
		return firstdate;
	}
	public void setFirstdate(String firstdate) {
		this.firstdate = firstdate;
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
	@Override
	public String toString() {
		return "YxFirsttable [projectid=" + projectid + ", firststatus=" + firststatus + ", firstdate=" + firstdate
				+ ", firstname=" + firstname + ", firstremarks=" + firstremarks + "]";
	}
	
}
