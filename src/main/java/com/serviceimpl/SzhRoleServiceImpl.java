package com.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.SzhRoleDao;
import com.entity.SzhRole;
import com.service.SzhRoleService;

@Service
public class SzhRoleServiceImpl implements SzhRoleService {
	@Autowired
	SzhRoleDao srd;
	@Override
	public List queryRole() {
		// TODO Auto-generated method stub
		return srd.queryRole();
	}

	@Override
	public int addRole(SzhRole sr) {
		// TODO Auto-generated method stub
		int flag = srd.addRole(sr);
		return flag;
	}

	@Override
	public int updateRole(SzhRole srr) {
		// TODO Auto-generated method stub
		int flag = srd.updateRole(srr);
		return flag;
	}

}
