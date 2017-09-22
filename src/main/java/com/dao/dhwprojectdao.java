package com.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

public interface dhwprojectdao {
	//查询项目
	public List<Map> selectproject();
	//查询某个项目
	public List<Map> queryprojectone(String name);
	//根据时间查询项目
	public List<Map> queryprojecttwo(Date s1,Date s2);
	//更具时间名字查询项目
	public List<Map> queryall(Date s1,Date s2,String name);
	//查询项目详情
	public List<Map> selxiangqing(int id);
}
