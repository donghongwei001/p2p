package com.service;

import java.util.List;
import java.util.Map;

import com.entity.Outtime;
import com.entity.YxExamine;
import com.entity.YxFirst;

public interface YxExamineService {
	//��ѯ��һ��Ҫ��˵���Ŀ
	List<YxExamine>queryexam();
	//��ѯ���ڵ���Ŀ
	List<Outtime> queryx();
	//��ѯ��Ҫ������˵���Ŀ
	List<YxFirst>queryftt();
	//�������ʱ�鿴��Ŀ����
	List<Map> queryss(int id);
	//��ѯҪ��������Ŀ
	List<Map> queryfa();
} 
