package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.SzhPage;
import com.entity.SzhProject;

public interface SzhProjectDao {
	//分页
	public List<Map<String,Object>> queryProject(SzhPage spg);
	//根据项目名查询
	public List<SzhProject> queryPart(String comname);
	//根据用户名查询
	public List<SzhProject> queryUser(String user);
	//根据时间段查询
	public List<SzhProject> queryTime(String zzz,String hhh);
	//查询全部
	public int queryitempersonCount();
	//查询所有信息进行封装
	public List<Map> queryAll();
	public List<Map> queryAllTwo();
}
