package com.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

public interface dhwprojectdao {
	//��ѯ��Ŀ
	public List<Map> selectproject();
	//��ѯĳ����Ŀ
	public List<Map> queryprojectone(String name);
	//����ʱ���ѯ��Ŀ
	public List<Map> queryprojecttwo(Date s1,Date s2);
	//����ʱ�����ֲ�ѯ��Ŀ
	public List<Map> queryall(Date s1,Date s2,String name);
	//��ѯ��Ŀ����
	public List<Map> selxiangqing(int id);
}
