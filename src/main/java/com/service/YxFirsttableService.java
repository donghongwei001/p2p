package com.service;

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
}
