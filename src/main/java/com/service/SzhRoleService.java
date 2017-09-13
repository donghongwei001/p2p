package com.service;

import java.util.List;

import com.entity.SzhRole;

public interface SzhRoleService {
	public List queryRole();
	public int addRole(SzhRole sr);
	public int updateRole(SzhRole srr);
	
}
