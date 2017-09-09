package com.dao;

import java.util.List;

import com.entity.SzhUser;

public interface SzhUserDao {
	public List queryUser();
	public int addUser(SzhUser su);
	public int updateUser(SzhUser suu);
}
