package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.YxExamine;
import com.entity.YxFabu;
import com.entity.YxFinaltable;
import com.entity.YxFirsttable;

public interface YxFirsttableDao {
	
	//第一次审核插入到数据库
	public void addfirst(YxFirsttable yf); 
	//第二次审核插入到数据库
	public void addsecond(YxFinaltable yt);
	//第一次审核成功后更新项目审核表审核状态
	public void update(int id);
	//第二次审核成功后更新第二次审核状态
	public void updatesecond(int id);
	//发布项目，插入到项目发布表
	public int addfabu(YxFabu yb);
	//发布项目成功后，更新项目状态 
	public void updatefinal(int id);
	//初审失败插入到项目表
	public void onexm(YxFabu yb);
	//初审失败数据插入成功改状态
	public void updatexm(int id);
	//终审失败插入到项目表
	public void twoxm(YxFabu yf);
	//终审失败数据插入成功改状态
	public void updatetxmm(int id);
	public void updatexiajia(String date,int id);
	public void updatefinalstatu(int id);
	public List<Map> selmoney(int id);
	public void addhuankuan(int id,String date,Double money,Double lilv,double allmoney);
	public List<Map> selfangman(int id);
	public int selman(String name);
	public void addshoukuan(int userid,int projectid,String date,double money,double lilv,double benjin);
	public void updatetotalmoney(int money);
}
