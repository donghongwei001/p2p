package com.dao;



import java.util.List;

import com.entity.Outtime;
import com.entity.YxExamine;
import com.entity.YxFirst;

public interface YxExamineDao {
	List<YxExamine> queryAll();
	
	List<Outtime> queryxm();
	
	List<YxFirst>queryft();
	
}
