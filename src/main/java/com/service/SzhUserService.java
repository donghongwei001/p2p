package com.service;

import java.util.List;

import com.entity.SzhUser;

public interface SzhUserService {
	public List queryUser();
	public int addUser(SzhUser su);
}
