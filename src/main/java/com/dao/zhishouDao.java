package com.dao;

import java.util.List;
import java.util.Map;

public interface zhishouDao {
	public int querytotalmoney();
	public void addshouru(int id,String date,double money);
	public void addzhichu(int id,String date,double money);
	public List<Map> selshouzhi();
}
