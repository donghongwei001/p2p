package com.service;

import java.util.List;

import com.entity.SzhRole;
import com.entity.SzhUser;

public interface SzhUserService {
	public List queryUser();
	public int addUser(SzhUser su);
	public List queryRole();
	public int addRole(SzhRole sr);
}
