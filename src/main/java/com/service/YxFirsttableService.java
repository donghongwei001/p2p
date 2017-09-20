package com.service;

import java.util.List;
import java.util.Map;

import com.entity.YxExamine;
import com.entity.YxFabu;
import com.entity.YxFinaltable;
import com.entity.YxFirsttable;

public interface YxFirsttableService {
	//第一次审核插入到数据库
	public int addfirsts(YxFirsttable yf);
	//第二次审核插入到数据库
	public int addseconds(YxFinaltable yt);
	//第一次审核成功后更新项目审核表审核状态
	public int update(YxExamine ym);
	//第二次审核成功后更新第二次审核状态
	public int updates(YxFirsttable yx);
	//发布项目，插入到项目发布表
	public int addfa(YxFabu yb);
	//发布项目成功后，更新项目状态
	public void updatefina(int id);
	//初审失败插入到项目表
	public void onexmm(YxFabu yb);
	//初审失败数据插入成功改状态
	public void updatexmm(int id);
	//终审失败插入到项目表
	public void twoxmm(YxFabu yf);
	//终审失败数据插入成功改状态
	public void updatetxm(int id);
	public void updatexiajia(String date,int id);
	public void updatefinalstatu(int id);
	public List<Map> selmoney(int id);
	public void addhuankuan(int id,String date,double qian,double lilv,Double allmoney);
	public List<Map> selfangman(int id);
	public int selman(String name);
	public void addshoukuan(int userid,int projectid,String date,double money,double lilv,double benjin);
	public void updatetotalmoney(int money);
}
