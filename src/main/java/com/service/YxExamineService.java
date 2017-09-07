package com.service;

import java.util.List;
import java.util.Map;

import com.entity.Outtime;
import com.entity.YxExamine;
import com.entity.YxFirst;

public interface YxExamineService {
	//查询第一次要审核的项目
	List<YxExamine>queryexam();
	//查询逾期的项目
	List<Outtime> queryx();
	//查询需要二次审核的项目
	List<YxFirst>queryftt();
	//二次审核时查看项目详情
	List<Map> queryss(int id);
	//查询要发布的项目
	List<Map> queryfa();
} 
