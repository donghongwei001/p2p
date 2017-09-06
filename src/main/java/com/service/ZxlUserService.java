package com.service;

import java.util.List;

import com.entity.ZxlMyHuankuan;
import com.entity.ZxlMyPersonal;
import com.entity.ZxlMyProject;
import com.entity.ZxlMyTouzi;
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
	public List<ZxlMyProject> listproject();//查询申请项目表信息
	public List<ZxlMyTouzi> listmytouzi();//查询每个用户的投资
	public List<ZxlMyHuankuan> listhuankuan();//查询该用户的还款信息
	public List<ZxlMyPersonal> listmypersonal();//查询该用户的个人信息
	//public boolean updatepwd(ZxlMyPersonal pwd);//修改密码
}
