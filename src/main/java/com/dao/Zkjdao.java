package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Zkjproject;

public interface Zkjdao {
	public void saveproject(Zkjproject pp);
	public List<Map> qyeryproject();
	public List<Map> selectusers();
	public void updateuser(String str);
	public void updatestartuser(String str);
	public List<Map> selectallproject(int id);
	public int quertuserid(String name);
	public String queryname(int id);
}
