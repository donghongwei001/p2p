package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.ypgHuanK;

public interface YpgRoleDao {
	public List<Map> queryRole();
	//查询所有用户的信息
	public List<Map> queryPersonals();
	//未还款信息查询
	public List<Map> queryRepayMoney();
	//已还款信息查询
	public List<Map> queryRepay();
	
}
