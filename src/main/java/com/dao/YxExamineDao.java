package com.dao;



import java.util.List;
import java.util.Map;

import com.entity.Fabu;
import com.entity.Outtime;

public interface YxExamineDao {
	//查询第一次审核的项目
	public List<Map> queryAll();
	//查询逾期的项目
	public List<Outtime> queryxm();
	//查询第二次要审核的项目
	public List<Map>queryft();
	//根据id查询项目详情
	public List<Map> querylm(int id);
	//查询要发布的项目
	public List<Map> queryfabu();
	//查询第一次审核没通过的项目
	public List<Map> querynot();
	//查询第二次审核没通过的项目
	public List<Map> querynottwo();
	//根据用户id查询用户信息
	public List<Map>queryuser(int id);
	//id查询详情
	public List<Map>queryfirst(int id);
}
