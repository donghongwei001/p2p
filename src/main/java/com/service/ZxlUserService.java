package com.service;

import java.util.List;

import com.entity.ZxlUser;

public interface ZxlUserService {
	public List<ZxlUser> list();
	public void addUser(ZxlUser user);
}
