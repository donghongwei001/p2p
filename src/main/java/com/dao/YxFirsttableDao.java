package com.dao;

import com.entity.YxExamine;
import com.entity.YxFabu;
import com.entity.YxFinaltable;
import com.entity.YxFirsttable;

public interface YxFirsttableDao {
	
	//第一次审核插入到数据库
	public int addfirst(YxFirsttable yf); 
	//第二次审核插入到数据库
	public int addsecond(YxFinaltable yt);
	//第一次审核成功后更新项目审核表审核状态
	public int update(YxExamine ym);
	//第二次审核成功后更新第二次审核状态
	public int updatesecond(YxFirsttable yx);
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
}
