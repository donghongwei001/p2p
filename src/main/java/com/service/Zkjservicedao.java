package com.service;

import java.util.List;
import java.util.Map;

import com.entity.ZkjInvest;
import com.entity.Zkjproject;

public interface Zkjservicedao {
	public void saveproject(Zkjproject pp,String username);
	public List<Map> selectproject();
	public List<Map> selectusers();
	public void updateuser(String str);
	public void updatestartuser(String str);
	public List<Map> selectallproject(int id);

	public void addinvest(ZkjInvest zz,String name);

	public String queryname(String name);
	public List<Map> queryuserinfo();
	public List<Map> queryoneuserinfo(String name);
}
