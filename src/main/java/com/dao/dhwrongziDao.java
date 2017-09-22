package com.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

public interface dhwrongziDao {
	//查询所有融资项目
	public List<Map> queryall();
	//查询某个项目
	public List<Map> queryprojectone(String name);
	//根据时间查询项目
	public List<Map> queryprojecttwo(Date str,Date str2);
	//根据时间名称查询项目
	public List<Map> queryprojectthr(Date str1,Date str2,String str3);
	//查询项目详情
	public List<Map> selxiangqing(int id);
}
