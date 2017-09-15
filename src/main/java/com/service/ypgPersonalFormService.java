package com.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.entity.YpgEmployee;
import com.entity.ypgPersonalForm;

public interface ypgPersonalFormService {
	//查询个人信息
	public List<Map> getQueryPersonalForm(int userID);
	//插入认证信息
	public int getPersonalForm(ypgPersonalForm pff,String username);
	//更新个人信息
	public int UpdatePersonalForm(ypgPersonalForm pff);
	//插入员工信息
	public int getInsertEmployee(YpgEmployee ee);
	//查询员工信息
	public List<Map> getQueryEmployee();
	//用户信息插入投资表
	public int insertInvestor(ypgPersonalForm pf,String username);
}
