package com.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

public interface dhwrongziDao {
	//��ѯ����������Ŀ
	public List<Map> queryall();
	//��ѯĳ����Ŀ
	public List<Map> queryprojectone(String name);
	//����ʱ���ѯ��Ŀ
	public List<Map> queryprojecttwo(Date str,Date str2);
	//����ʱ�����Ʋ�ѯ��Ŀ
	public List<Map> queryprojectthr(Date str1,Date str2,String str3);
	//��ѯ��Ŀ����
	public List<Map> selxiangqing(int id);
}
