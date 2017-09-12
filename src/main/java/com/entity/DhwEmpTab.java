package com.entity;


public class DhwEmpTab {
	int empid;
	String empname;
	String emppwd;
	String name;
	String sex;
	String  iphone;
	String  address;
	String  Email;
	String addtime;
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
	public String getIphone() {
		return iphone;
	}
	public void setIphone(String iphone) {
		this.iphone = iphone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
	
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getAddtime() {
		return addtime;
	}
	public void setAddtime(String addtime) {
		this.addtime = addtime;
	}
	@Override
	public String toString() {
		return "DhwEmpTab [empid=" + empid + ", empname=" + empname + ", emppwd=" + emppwd + ", name=" + name + ", sex="
				+ sex + ", iphone=" + iphone + ", address=" + address + ", Email=" + Email + ", addtime=" + addtime
				+ "]";
	}

	
}
