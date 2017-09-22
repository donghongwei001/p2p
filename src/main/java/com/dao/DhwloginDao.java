package com.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.entity.DhwEmpTab;



public interface DhwloginDao {
	//根据用户名查询用户是否 存在
	public DhwEmpTab queryUser(String user);
	//查询角色权限
	public List<HashMap<String,Object>> queryrolepower(DhwEmpTab dd);
	//查询角色名字
	public String queryrolename(int id);
	public int querycount();
	public List<Map> queryxiajia();
	public int selxiajia();
	public int selmoney();
}
