package com.dao;

import java.util.List;
import java.util.Map;

public interface YpgRepaymentDao {
	//还款查询
	public List<Map> queryRepayment();
	
	
	/*//投标人简单查询
	public List<Map> queryPublish();
	//投标详细信息查询
	public List<Map> queryMinute();*/
	
	
	//还款计划表
	public List<Map> querySchedule(int id);
	
	//还款杂表查询
	public List<Map> queryProblems(int id);
}
