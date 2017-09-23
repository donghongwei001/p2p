package com.service;

import java.util.List;
import java.util.Map;

import com.entity.SzhPage;
import com.entity.SzhProject;

public interface SzhProjectService {
	//分页
	public Map<String,Object> queryProject(SzhPage spg);
	//根据项目名查询
	public List<SzhProject> queryPart(String comname);
	//根据用户名查询
	public List<SzhProject> queryUser(String user);
	//根据时间段查询
	public List<SzhProject> queryTime(String zzz,String hhh);
	//查询所有进行封装
	public String queryAll();
	public String queryAllTwo();
}
