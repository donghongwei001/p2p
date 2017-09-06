package com.dao;



import java.util.List;
import java.util.Map;

import com.entity.Outtime;
import com.entity.YxExamine;
import com.entity.YxFirst;

public interface YxExamineDao {
	//��ѯ��һ��Ҫ��˵���Ŀ
	List<YxExamine> queryAll();
	//��ѯ���ڵ���Ŀ
	List<Outtime> queryxm();
	//��ѯ��Ҫ������˵���Ŀ
	List<YxFirst>queryft();
	//�������ʱ�鿴��Ŀ����
	List<Map> querylm(int id);

}
