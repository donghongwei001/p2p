package com.service;

import java.util.List;
import java.util.Map;

import com.entity.Ypg;
import com.entity.YpgProblem;

public interface YpgRepaymentService {
	//�����
	public List<Map> queryRepayment();

	//����ƻ���
	public List<Map> querySchedule(int id);
	
	//�����ӱ��ѯ
	public List<Map> queryProblems(Ypg yy);
	//��ѯ������Ŀ��
	public List<Map> selectOutTimetable();
	//������Ŀ���ģ����ѯ
	public List<Map> queryOutTimetable(String comname);
}
