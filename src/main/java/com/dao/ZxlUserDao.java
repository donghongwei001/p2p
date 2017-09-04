package com.dao;

import java.util.List;

import com.entity.ZxlMyProject;
import com.entity.ZxlMyTouzi;
import com.entity.ZxlUser;
/**
 * 持久层映射接口
 * @author ZXL
 *
 */
public interface ZxlUserDao {
	public List<ZxlUser> list();//查询用户表所有信息
	public int addUser(ZxlUser user);//添加用户
	public List<ZxlMyProject> listproject();//查询申请项目表信息
	public List<ZxlMyTouzi> listmytouzi();//查询每个用户的投资
}
