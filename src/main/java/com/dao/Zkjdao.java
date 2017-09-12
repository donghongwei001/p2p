package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.ZkjInvest;
import com.entity.Zkjproject;

public interface Zkjdao {
	public void saveproject(Zkjproject pp);//申请的项目插入到数据库
	public List<Map> qyeryproject();//二次审核项目界面的查询
	public List<Map> selectusers();//查询所有的用户
	public void updateuser(String str);//更新用户的是否禁用状态
	public void updatestartuser(String str);//更新用户的是否禁用状态
	public List<Map> selectallproject(int id);//前台投资时的单个项目查询

	public void saveinvest(ZkjInvest zz);//向投资表插入数据（放款表）

	public int quertuserid(String name);//根据用户名查询用户ID
	public String queryname(int id);//根据用户ID查询用户的真实姓名

}
