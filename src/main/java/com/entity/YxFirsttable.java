package com.entity;

import java.sql.Date;

public class YxFirsttable {
	int projectid;  // ��Ŀid
	int firststatus; // ���״̬
	Date firstdate; //�������
	String firstname; //�����
	String firstremarks;  //��ע
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
	public Date getFirstdate() {
		return firstdate;
	}
	public void setFirstdate(Date firstdate) {
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
	
}
