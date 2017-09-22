package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.SzhRole;
import com.entity.ypgHuanK;

public interface SzhRoleDao {
	public List queryRole();
	public int addRole(SzhRole sr);
	public int updateRole(SzhRole srr);
}
