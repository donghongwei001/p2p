package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.YpgProblem;
import com.entity.YpgUsermoney;

public interface YpgRepaymentDao {
	//�����ѯ
	public List<Map> queryRepayment();

	//����ƻ���
	public List<Map> querySchedule(int id);
	
	//�����ӱ��ѯ
	public List<Map> queryProblems(int id);
	
	//�����û���Ǯ��
	public void updateUserMoney(YpgUsermoney yu);
	
	//����ƽ̨�˻���Ǯ��
	public void updateTotalMoney(double totalMoney);
	
	//���뵽���ڱ�
	public void insertOutTimeTable(YpgUsermoney yu);
	
	//�����տ��״̬
	public void updateShouKuanTable(YpgUsermoney yu);
	
	//����ÿ�»���״̬
	public void updateRepaySchedule(YpgUsermoney yu);
	
	//��ѯ����ƻ������Ƿ���δ�����
	public List<Map> selectRepaySchedule(int id);
	
	//���»����״̬
	public void updateRepaymoney(YpgUsermoney yu);
	
	//��ѯ������Ŀ��
	public List<Map> selectOutTimetable();
}
