package com.dao;

import java.util.List;

import com.entity.SzhUser;

public interface SzhUserDao {
	public List<SzhUser> queryUser();
	public int addUser(SzhUser su);
}
