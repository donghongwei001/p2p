package com.dao;

import com.entity.YxExamine;
import com.entity.YxFinaltable;
import com.entity.YxFirst;
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
}
