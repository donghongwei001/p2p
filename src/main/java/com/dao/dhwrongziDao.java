package com.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

public interface dhwrongziDao {
	public List<Map> queryall();
	public List<Map> queryprojectone(String name);
	public List<Map> queryprojecttwo(Date str,Date str2);
	public List<Map> queryprojectthr(Date str1,Date str2,String str3);
}
