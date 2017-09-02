package com.entity;

public class ypgEmployee {
	private int empid;
	private String empname;
	private String emppwd;
	private String name;
	private String sex;
	private int iphone;
	private String address;
	private String email;
	private String addtime;
	public int getEmpid() {
		return empid;
	}
	public void setEmpid(int empid) {
		this.empid = empid;
	}
	public String getEmpname() {
		return empname;
	}
	public void setEmpname(String empname) {
		this.empname = empname;
	}
	public String getEmppwd() {
		return emppwd;
	}
	public void setEmppwd(String emppwd) {
		this.emppwd = emppwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public int getIphone() {
		return iphone;
	}
	public void setIphone(int iphone) {
		this.iphone = iphone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddtime() {
		return addtime;
	}
	public void setAddtime(String addtime) {
		this.addtime = addtime;
	}
	@Override
	public String toString() {
		return "ypgEmployee [empid=" + empid + ", empname=" + empname + ", emppwd=" + emppwd + ", name=" + name
				+ ", sex=" + sex + ", iphone=" + iphone + ", address=" + address + ", email=" + email + ", addtime="
				+ addtime + "]";
	}
	
}
