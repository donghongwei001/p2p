package com.dao;

import java.util.List;
import java.util.Map;

public interface zhishouDao {
	public int querytotalmoney();
	public void addshouru(int id,String date,double money);
	public void addzhichu(int id,String date,double money);
	public List<Map> selshouzhi();
	public List<Map> selyuqi(String name);
	public void updatenew(String date,int day,double money,int id,double qian);
	public String seltime(int id,double money);
}
