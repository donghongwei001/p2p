package com.entity;

import java.sql.Date;

public class YpgUsermoney {
	private int userid;//�û�id
	private double usertotalmoney;//�û��ֹ�����Ǯ��
	private int subjectid;//��ĿID
	private double totalM;//Ӧ����Ϣ
	private Date time2;// Ӧ����ʱ��
	
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public double getUsertotalmoney() {
		return usertotalmoney;
	}
	public void setUsertotalmoney(double usertotalmoney) {
		this.usertotalmoney = usertotalmoney;
	}
	
	public int getSubjectid() {
		return subjectid;
	}
	public void setSubjectid(int subjectid) {
		this.subjectid = subjectid;
	}
	public double getTotalM() {
		return totalM;
	}
	public void setTotalM(double totalM) {
		this.totalM = totalM;
	}
	public Date getTime2() {
		return time2;
	}
	public void setTime2(Date time2) {
		this.time2 = time2;
	}
	
	
	
}
