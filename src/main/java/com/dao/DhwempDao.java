package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.DhwEmpTab;

public interface DhwempDao {
	//查询所有员工
	public List<Map> queryemp();
	//查询某一个员工
	public List<Map> selemp(String name);
	//增加一个员工
	public void addemp(DhwEmpTab empTab);
	//删除一个员工
	public void deleteemp(int id);
	//删除一个员工的所有角色
	public void deleteemprole(int id);
	//搜索一个员工
	public List<Map> seloneemp(int id);
	//更改一个员工
	public void updateemp(DhwEmpTab empTab);
	//所有员工所有的角色
	public List<Map> selemprole(int id);
	//增加员工的角色
	public void addemprole(int id1,String id);
}
