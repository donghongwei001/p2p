package com.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

public interface dhwprojectService {
	//��ѯ��Ŀ
	public List<Map> selectproject();
	//��ѯһ����Ŀ
	public List<Map> queryprojectone(String str);
	//����ʱ��ģ����ѯ
	public List<Map> queryprojecttwo(Date s1,Date s2);
	//����ʱ������ģ����ѯ
	public List<Map> queryall(Date s1,Date s2,String name);
	//��ѯ��Ŀ����
	public List<Map> selxiangqing(int id);
}
