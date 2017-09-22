package com.serviceimpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.DhwroleDao;
import com.entity.Power;
import com.entity.Role;
import com.service.DhwroleService;
@Service
public class DhwroleServiceimpl implements DhwroleService{

	@Autowired
	private DhwroleDao dhwroledao;
	@Override
	@Transactional
	public List<Map> selectrole() {
		// TODO Auto-generated method stub
		return dhwroledao.selectrole();
	}
	@Override
	@Transactional
	public List<Map> queryrole(String id) {
		// TODO Auto-generated method stub
		return dhwroledao.queryrole(id);
	}
	@Override
	@Transactional
	public List<Map> selectpower(String id) {
		// TODO Auto-generated method stub
		return dhwroledao.selectpower(id);
	}
	@Override
	@Transactional
	public List<Map> selectson(String id) {
		// TODO Auto-generated method stub
		return dhwroledao.selectson(id);
	}
	@Override
	@Transactional
	public int addrole(Role role) {
		// TODO Auto-generated method stub
		return dhwroledao.addrole(role);
	}
	@Override
	@Transactional
	public void addrolepower(String roleid, String powerid) {
		// TODO Auto-generated method stub
		dhwroledao.addrolepower(roleid, powerid);
	}
	@Override
	@Transactional
	public List<Map> selrolepower(String id) {
		// TODO Auto-generated method stub
		return dhwroledao.selrolepower(id);
	}
	@Override
	@Transactional
	public List<Map> selonerolepower(String roleid, String powerid) {
		// TODO Auto-generated method stub
		return dhwroledao.selonerolepower(roleid, powerid);
	}
	@Override
	@Transactional
	public void updaterole(Role role) {
		// TODO Auto-generated method stub
		dhwroledao.updaterole(role);
	}
	@Override
	@Transactional
	public void deleterole(String id) {
		// TODO Auto-generated method stub
		dhwroledao.deleterole(id);
	}
	@Override
	@Transactional
	public void deleterolepower(String id) {
		// TODO Auto-generated method stub
		dhwroledao.deleterolepower(id);
	}
	
}
