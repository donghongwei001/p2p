package com.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

public interface DhwrongziService {
	//��ѯ�������� ��Ŀ
	public List<Map> queryall();
	//������Ŀ��������
	public List<Map> queryprojectone(String str);
	//����ʱ�� ��ѯ��Ŀ
	public List<Map> queryprojecttwo(Date str1,Date str2);
	//����ʱ�����ֲ�ѯ��Ŀ
	public List<Map> queryprojectthr(Date str1,Date str2,String str3);
	//��ѯ��Ŀ����
	public List<Map> selxiangqing(int id);
	//��ѯ��Ŀ
	public List<Map> queryproject(Date str1,Date str2,String str3);
}
