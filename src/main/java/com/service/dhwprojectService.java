package com.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

public interface dhwprojectService {
	public List<Map> selectproject();
	public List<Map> queryprojectone(String str);
	public List<Map> queryprojecttwo(Date s1,Date s2);
	public List<Map> queryall(Date s1,Date s2,String name);
	public List<Map> selxiangqing(int id);
}