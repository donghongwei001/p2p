package com.service;

import com.entity.YxExamine;
import com.entity.YxFinaltable;
import com.entity.YxFirst;
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
}
