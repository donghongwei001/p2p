package com.serviceimpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.YpgRoleDao;
import com.service.YpgRoleService;

@Service
public class YpgRoleServiecImpl implements YpgRoleService{
	@Autowired
	private YpgRoleDao role;
	@Override
	public List<Map> getQueryRole() {
		// TODO Auto-generated method stub
		return role.queryRole();
	}
	@Override
	public List<Map> queryPersonals() {
		// TODO Auto-generated method stub
		return role.queryPersonals();
	}
	@Override
	public List<Map> queryRepayMoney() {
		// TODO Auto-generated method stub
		return role.queryRepayMoney();
	}
	@Override
	public List<Map> queryRepay() {
		// TODO Auto-generated method stub
		return role.queryRepay();
	}
	
}
