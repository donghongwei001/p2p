package com.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

public interface DhwrongziService {
	//查询所有融资 项目
	public List<Map> queryall();
	//查新项目根据名字
	public List<Map> queryprojectone(String str);
	//根据时间 查询项目
	public List<Map> queryprojecttwo(Date str1,Date str2);
	//根据时间名字查询项目
	public List<Map> queryprojectthr(Date str1,Date str2,String str3);
	//查询项目详情
	public List<Map> selxiangqing(int id);
	//查询项目
	public List<Map> queryproject(Date str1,Date str2,String str3);
}
