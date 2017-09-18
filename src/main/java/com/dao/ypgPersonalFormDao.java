package com.dao;


import java.util.List;
import java.util.Map;

import com.entity.YpgEmployee;
import com.entity.ypgPersonalForm;

public interface ypgPersonalFormDao {
	//用户详细信息查询
	public List<Map> queryPersonalForm(int userID);
	//用户信息的插入
	public int insertPersonalForm(ypgPersonalForm pf);
	//用户信息的更新
	public int updatePersonalForm(ypgPersonalForm pf);
	//员工信息的插入
	public int insertEmployee(YpgEmployee ee);
	//员工信息的查询
	public List<Map> queryEmployee();
	//用户信息插入投资表
	public int insertInvestor(ypgPersonalForm pf);
}
