package com.dao;

import java.util.List;

import com.entity.SzhRole;

public interface SzhRoleDao {
	public List queryRole();
	public int addRole(SzhRole sr);
	public int updateRole(SzhRole srr);
}
