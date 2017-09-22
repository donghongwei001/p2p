package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Zkjinvestmoney;
import com.entity.Zkjinvestor;
import com.entity.Zkjmoney;
import com.entity.Zkjprojectrelease;
import com.entity.Zkjzong;

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
	public void saveinvestor(Zkjinvestor zz);//插入投资人的身份认证
	public String selectinvector(int id);//根据用户id查询投资人的name
	public int selectuseri(String name);//根据用户名查勋ID
	public Zkjzong countmoney();//查询所有投资的总钱数
	public double selectusermoney(String nmae);//根据用户名查询当前账户有多少钱
	public void updateusermoney(Zkjmoney zz);//更新用户的总钱数
	public void replaceinvestormoney(Zkjinvestmoney zz);//更新借款人的money
	public double selectuseridmoney(int id);//根据用户ID查询用户余额
	public int selectprojectstatus(int projectid);//根据项目id查询项目状态
}

