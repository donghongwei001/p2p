package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.ZkjInvest;
import com.entity.Zkjproject;

public interface Zkjdao {
	public void saveproject(Zkjproject pp);
	public List<Map> qyeryproject();
	public List<Map> selectusers();
	public void updateuser(String str);
	public void updatestartuser(String str);
	public List<Map> selectallproject(int id);

	public void saveinvest(ZkjInvest zz);//向投资表插入数据（放款表）

	public int quertuserid(String name);//根据用户名查询用户ID
	public String queryname(int id);//根据用户ID查询用户的真实姓名

}
