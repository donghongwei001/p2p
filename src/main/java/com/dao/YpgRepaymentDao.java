package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.YpgProblem;
import com.entity.YpgUsermoney;

public interface YpgRepaymentDao {
	//还款查询
	public List<Map> queryRepayment();

	//还款计划表
	public List<Map> querySchedule(int id);
	
	//还款杂表查询
	public List<Map> queryProblems(int id);
	
	//更新用户总钱数
	public void updateUserMoney(YpgUsermoney yu);
	
	//更新平台账户总钱数
	public void updateTotalMoney(double totalMoney);
	
	//插入到逾期表
	public void insertOutTimeTable(YpgUsermoney yu);
	
	//更新收款表状态
	public void updateShouKuanTable(YpgUsermoney yu);
	
	//更新每月还款状态
	public void updateRepaySchedule(YpgUsermoney yu);
	
	//查询还款计划表中是否还有未还款的
	public List<Map> selectRepaySchedule(int id);
	
	//更新还款表状态
	public void updateRepaymoney(YpgUsermoney yu);
	
	//查询逾期项目表
	public List<Map> selectOutTimetable();
}
