package com.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

public interface DhwrongziService {
	public List<Map> queryall();
	public List<Map> queryprojectone(String str);
	public List<Map> queryprojecttwo(Date str1,Date str2);
	public List<Map> queryprojectthr(Date str1,Date str2,String str3);
	public List<Map> selxiangqing(int id);
}
