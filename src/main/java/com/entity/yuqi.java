package com.entity;

public class yuqi {
	int id;
	double money;
	int lastmoney;
	int day;
	String time;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public double getMoney() {
		return money;
	}
	public void setMoney(double money) {
		this.money = money;
	}
	public int getLastmoney() {
		return lastmoney;
	}
	public void setLastmoney(int lastmoney) {
		this.lastmoney = lastmoney;
	}
	public int getDay() {
		return day;
	}
	public void setDay(int day) {
		this.day = day;
	}
	
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "yuqi [id=" + id + ", money=" + money + ", lastmoney=" + lastmoney + ", day=" + day + ", time=" + time
				+ "]";
	}
	
	
}
