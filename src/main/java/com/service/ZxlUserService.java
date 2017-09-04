package com.service;

import java.util.List;

import com.entity.ZxlUser;
/**
 * 
 * @author ZXL
 *
 */
public interface ZxlUserService {
	public List<ZxlUser> list();//查询用户表所有信息
	public int addUser(ZxlUser user);//添加用户
	public Boolean find(ZxlUser zu);//根据用户名和密码查询用户
}
