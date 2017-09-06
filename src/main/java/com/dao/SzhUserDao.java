package com.dao;

import java.util.List;

import com.entity.SzhRole;
import com.entity.SzhUser;

public interface SzhUserDao {
	public List<SzhUser> queryUser();
	public int addUser(SzhUser su);
	public List<SzhRole> queryRole();
	public int addRole(SzhRole sr);
}