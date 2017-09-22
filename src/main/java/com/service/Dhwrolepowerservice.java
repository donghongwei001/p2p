package com.service;

import java.util.List;
import java.util.Map;

import com.entity.Power;

public interface Dhwrolepowerservice {
	//查询所有权限
	public List<Map> queryPower();
	//查询某个权限
	public List<Map> querypid();
	//增加一个权限
	public Integer addpower(Power power);
	//删除一个权限
	public void deletepower(String id);
	//查询一个权限
	public List<Map> selonepower(String id);
	//更改一个权限
	public void updatepower(Power power);
	//查询权限
	public List<Map> selpower(String id);
}
