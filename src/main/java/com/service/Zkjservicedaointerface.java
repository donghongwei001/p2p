package com.service;

import java.util.List;
import java.util.Map;

import com.entity.ZkjInvest;
import com.entity.Zkjproject;

public interface Zkjservicedaointerface {
	public void saveproject(Zkjproject pp,String username);
	public List<Map> selectproject();
	public List<Map> selectusers();
	public void updateuser(String str);
	public void updatestartuser(String str);
	public List<Map> selectallproject(int id);

	public void addinvest(ZkjInvest zz,String name);

	public String queryname(String name);

	public int surplusinvest(int projectid);//单个项目剩余投资金额
	public List<Map> queryallproject();//查询所有的项目
	public List<Map> personalinformation(int id);//根据项目ID查询个人信息
	public String queryusername(int id);//根据项目id查询用户呢称
	public List<Map> investinformation(int id);//根据项目id查询项目信息
	public List<Map> selectinvestinformation(int id);//根据项目id查询投标记录
}
