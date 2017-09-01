package com.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.SzhUserDao;
import com.entity.SzhRole;
import com.entity.SzhUser;
import com.service.SzhUserService;

@Service
public class SzhUserServiceImpl implements SzhUserService {
	@Autowired
	SzhUserDao sud;
	@Override
	public List queryUser() {
		// TODO Auto-generated method stub
		return sud.queryUser();
	}
	@Override
	public int addUser(SzhUser su) {
		// TODO Auto-generated method stub
		int flag = sud.addUser(su);
		return flag;
	}
	@Override
	public List queryRole() {
		// TODO Auto-generated method stub
		return sud.queryRole();
	}
	@Override
	public int addRole(SzhRole sr) {
		// TODO Auto-generated method stub
		int flag = sud.addRole(sr);
		return flag;
	}

}
