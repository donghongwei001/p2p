package com.service;

import java.util.List;
import java.util.Map;

public interface YpgRoleService {
	public List<Map> getQueryRole();
	//个人详细信息查询
	public List<Map> queryPersonals();
	//未还款信息
	public List<Map> queryRepayMoney();
	//已还款信息查询
	public List<Map> queryRepay();
}
