package com.service;

import java.util.List;
import java.util.Map;

public interface zhishouservice {
	public int querytotalmoney();
	public void addshouru(int id,String date,double money);
	public void addzhichu(int id,String date,double money);
	public List<Map> selshouzhi();
}
