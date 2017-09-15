package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Zkjprojectrelease;

public interface Zkjdaointerface {
	
	public Integer totalmoneyinvest(int projectid);//查询单个项目已投资的总钱数
	public int loanmoney(int projectid);//查询单个项目借款金额
	public List<Map> queryallproject();//查询所有的项目
	public int selectuserid(int id); //根据项目id查询借款人id
	public String selectusername(int id);//根据用户ID查询用户呢称
	public List<Map> personalinformation(int id);//根据用户id查询用户的个人信息
	public List<Map> investinformation(int id);//根据项目id查询项目信息
	public List<Map> selectinvestinformation(int id);//根据项目id查询投标记录
	public void updateprojectrelease(Zkjprojectrelease zz);//更新项目发布表的剩余要投资的资金
}

