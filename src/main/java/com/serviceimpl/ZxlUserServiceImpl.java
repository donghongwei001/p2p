package com.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ZxlUserDao;
import com.entity.ZxlUser;
import com.service.ZxlUserService;
@Service
public class ZxlUserServiceImpl implements ZxlUserService{
	@Autowired
	private ZxlUserDao userdao;
	@Override
	public List<ZxlUser> list() {
		List<ZxlUser> list=userdao.list();
		return list;
	}

	@Override
	public void addUser(ZxlUser user) {
		userdao.addUser(user);
	}

}
