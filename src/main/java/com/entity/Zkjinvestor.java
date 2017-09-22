package com.entity;

public class Zkjinvestor {
	int id;
	String name;
	String sex;
	String idcard ;
	String telphone;
	String banknumber;
	public String getBanknumber() {
		return banknumber;
	}
	public void setBanknumber(String banknumber) {
		this.banknumber = banknumber;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getIdcard() {
		return idcard;
	}
	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}
	public String getTelphone() {
		return telphone;
	}
	public void setTelphone(String telphone) {
		this.telphone = telphone;
	}
	@Override
	public String toString() {
		return "Zkjinvestor [id=" + id + ", name=" + name + ", sex=" + sex + ", idcard=" + idcard + ", telphone="
				+ telphone + ", banknumber=" + banknumber + "]";
	}

}
