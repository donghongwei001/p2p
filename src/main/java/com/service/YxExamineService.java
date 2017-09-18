package com.service;

import java.util.List;
import java.util.Map;

import com.entity.Fabu;
import com.entity.Outtime;

public interface YxExamineService {
	//查询第一次要审核的项目
	public List<Map>queryexam();
	//查询逾期的项目
	public List<Outtime> queryx();
	//查询需要二次审核的项目
	public List<Map>queryftt();
	//二次审核时查看项目详情
	public List<Map> queryss(int id);
	//查询要发布的项目
	public List<Map> queryfa();
	//查询第一次审核没通过的项目
	public List<Map> querynotone();
	//查询第二次审核没通过的项目
	public List<Map> querytwo();
	//一次审核根据用户id查询用户认证信息
	public List<Map> queryuserid(int id);
	//id查询详情
	public List<Map> queryf(int id);
	//查看发布中，下架的项目详情
	public List<Map>queryde(int id);

} 
