package com.entity;

public class YxFinaltable {
	int projectid; //项目id
	String finalstatus; //审核状态
	String finaldate; //时间
	String finalname; //审核人
	String finalremarks; //意见
	int poststatus; //发布状态
	public int getProjectid() {
		return projectid;
	}
	public void setProjectid(int projectid) {
		this.projectid = projectid;
	}
	public String getFinalstatus() {
		return finalstatus;
	}
	public void setFinalstatus(String finalstatus) {
		this.finalstatus = finalstatus;
	}
	public String getFinaldate() {
		return finaldate;
	}
	public void setFinaldate(String finaldate) {
		this.finaldate = finaldate;
	}
	public String getFinalname() {
		return finalname;
	}
	public void setFinalname(String finalname) {
		this.finalname = finalname;
	}
	public String getFinalremarks() {
		return finalremarks;
	}
	public void setFinalremarks(String finalremarks) {
		this.finalremarks = finalremarks;
	}
	public int getPoststatus() {
		return poststatus;
	}
	public void setPoststatus(int poststatus) {
		this.poststatus = poststatus;
	}

}
