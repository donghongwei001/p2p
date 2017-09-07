package com.service;

import java.util.List;
import java.util.Map;

import com.entity.Power;
import com.entity.Role;

public interface DhwroleService {
	public List<Map> selectrole();
	public List<Map> queryrole(String id);
	public List<Map> selectpower(String id);
	public List<Map> selectson(String id);
	public int addrole(Role role);
	public void addrolepower(String roleid,String powerid);
	public List<Map> selrolepower(String id);
	public List<Map> selonerolepower(String roleid,String powerid);
	public void updaterole(Role role);
	public void deleterole(String id);
	public void deleterolepower(String id);
}
