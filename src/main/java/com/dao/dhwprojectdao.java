package com.dao;

import java.util.List;
import java.util.Map;

public interface dhwprojectdao {
	public List<Map> selectproject();
	public List<Map> queryprojectone(String name);
	public List<Map> queryprojecttwo(String s1,String s2);
}
