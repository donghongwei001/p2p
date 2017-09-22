package com.service;

import java.util.List;
import java.util.Map;

import com.entity.DhwEmpTab;

public interface Dhwempservice {
	//查询所有员工
	public List<Map> queryemp();
	//查询某个员工
	public List<Map> selemp(String name);
	//增加一个员工
	public void addemp(DhwEmpTab empTab);
	//删除一个员工
	public void deleteemp(int id);
	//删除一个员工的角色
	public void deleteemprole(int id);
	//查询一个员工
	public List<Map> seloneemp(int id);
	//更改一个员工
	public void updateemp(DhwEmpTab empTab);
	//查询一个员工的角色
	public List<Map> selemprole(int id);
	//增加一个员工的角色
	public void addemprole(int id1,String id);
}
