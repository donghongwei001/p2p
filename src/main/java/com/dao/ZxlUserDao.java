package com.dao;

import java.util.List;

import com.entity.ZxlUser;

public interface ZxlUserDao {
	public List<ZxlUser> list();
	public void addUser(ZxlUser user);
}
