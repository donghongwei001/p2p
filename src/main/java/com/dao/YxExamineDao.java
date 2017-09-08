package com.dao;



import java.util.List;
import java.util.Map;

import com.entity.Outtime;
import com.entity.YxExamine;
import com.entity.YxFirst;

public interface YxExamineDao {
	//ï¿½ï¿½Ñ¯ï¿½ï¿½Ò»ï¿½ï¿½Òªï¿½ï¿½Ëµï¿½ï¿½ï¿½Ä¿
	List<YxExamine> queryAll();
	//ï¿½ï¿½Ñ¯ï¿½ï¿½ï¿½Úµï¿½ï¿½ï¿½Ä¿
	List<Outtime> queryxm();
	//ï¿½ï¿½Ñ¯ï¿½ï¿½Òªï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ëµï¿½ï¿½ï¿½Ä¿
	List<YxFirst>queryft();
	//ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ê±ï¿½é¿´ï¿½ï¿½Ä¿ï¿½ï¿½ï¿½ï¿½
	List<Map> querylm(int id);
	//²éÑ¯Òª·¢²¼µÄÏîÄ¿
	List<Map> queryfabu();
	//²éÑ¯µÚÒ»´ÎÉóºËÃ»Í¨¹ıµÄÏîÄ¿
	List<Map> querynot();
	//²éÑ¯µÚ¶ş´ÎÉóºËÃ»Í¨¹ıµÄÏîÄ¿
	List<Map> querynottwo();
}
