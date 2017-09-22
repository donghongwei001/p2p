package com.service;

import java.util.List;
import java.util.Map;

import com.entity.Ypg;
import com.entity.YpgProblem;

public interface YpgRepaymentService {
	//还款表
	public List<Map> queryRepayment();

	//还款计划表
	public List<Map> querySchedule(int id);
	
	//还款杂表查询
	public List<Map> queryProblems(Ypg yy);
	//查询逾期项目表
	public List<Map> selectOutTimetable();
	//逾期项目表的模糊查询
	public List<Map> queryOutTimetable(String comname);
}
