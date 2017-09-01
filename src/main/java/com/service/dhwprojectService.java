package com.service;

import java.util.List;
import java.util.Map;

public interface dhwprojectService {
	public List<Map> selectproject();
	public List<Map> queryprojectone(String str);
	public List<Map> queryprojecttwo(String s1,String s2);
}
