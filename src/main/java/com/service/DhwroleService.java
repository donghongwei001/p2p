package com.service;

import java.util.List;
import java.util.Map;

import com.entity.Power;
import com.entity.Role;

public interface DhwroleService {
	//查询角色
	public List<Map> selectrole();
	//查询某个角色
	public List<Map> queryrole(String id);
	//查询某个角色的权限
	public List<Map> selectpower(String id);
	//查询某个权限的子权限
	public List<Map> selectson(String id);
	//增加一个角色
	public int addrole(Role role);
	//增加一个角色权限
	public void addrolepower(String roleid,String powerid);
	//搜索某个角色的权限
	public List<Map> selrolepower(String id);
	//所有 某个角色的某个权限
	public List<Map> selonerolepower(String roleid,String powerid);
	//更改角色
	public void updaterole(Role role);
	//删除角色
	public void deleterole(String id);
	//删除角色权限
	public void deleterolepower(String id);
}
