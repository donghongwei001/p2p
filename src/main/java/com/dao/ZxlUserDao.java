package com.dao;

import java.util.List;

import com.entity.ZxlUser;
/**
 * 持久层映射接口
 * @author ZXL
 *
 */
public interface ZxlUserDao {
	public List<ZxlUser> list();//查询用户表所有信息
	public int addUser(ZxlUser user);//添加用户
	//public List<ZxlUser> find(ZxlUser zu);//根据用户名和密码查询用户
}
