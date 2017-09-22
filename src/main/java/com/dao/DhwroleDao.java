package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Role;

public interface DhwroleDao {
	//查询角色
	public List<Map> selectrole();
	//查询一个角色
	public List<Map> queryrole(String id);
	//查询一个角色的权限
	public List<Map> selectpower(String id);
	//查询一个权限的子权限
	public List<Map> selectson(String id);
	//增加一个角色
	public int addrole(Role role);
	//增加一个角色的权限
	public void addrolepower(String roleid,String powerid);
	//搜索角色所有的权限
	public List<Map> selrolepower(String id);
	//搜索一个角色的权限
	public List<Map> selonerolepower(String roleid,String powerid);
	//更改一个角色
	public void updaterole(Role role);
	//删除一个角色
	public void deleterole(String id);
	//删除一个角色所有的权限
	public void deleterolepower(String id);
}