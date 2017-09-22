package com.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

public interface dhwprojectService {
	//查询项目
	public List<Map> selectproject();
	//查询一个项目
	public List<Map> queryprojectone(String str);
	//根据时间模糊查询
	public List<Map> queryprojecttwo(Date s1,Date s2);
	//根据时间名称模糊查询
	public List<Map> queryall(Date s1,Date s2,String name);
	//查询项目详情
	public List<Map> selxiangqing(int id);
}
