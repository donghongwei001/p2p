package com.dao;

import java.util.List;
import java.util.Map;

public interface YpgRepaymentDao {
	//�����ѯ
	public List<Map> queryRepayment();
	
	
	/*//Ͷ���˼򵥲�ѯ
	public List<Map> queryPublish();
	//Ͷ����ϸ��Ϣ��ѯ
	public List<Map> queryMinute();*/
	
	
	//����ƻ���
	public List<Map> querySchedule(int id);
	
	//�����ӱ��ѯ
	public List<Map> queryProblems(int id);
}
