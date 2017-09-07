package com.dao;



import java.util.List;
import java.util.Map;

import com.entity.Outtime;
import com.entity.YxExamine;
import com.entity.YxFirst;

public interface YxExamineDao {
	//查询第一次要审核的项目
	List<YxExamine> queryAll();
	//查询逾期的项目
	List<Outtime> queryxm();
	//查询需要二次审核的项目
	List<YxFirst>queryft();
	//二次审核时查看项目详情
	List<Map> querylm(int id);
	//查询要发布的项目
	List<Map> queryfabu();
	//查询第一次审核没通过的项目
	List<Map> querynot();
	//查询第二次审核没通过的项目
	List<Map> querynottwo();
}
