package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.SzhPage;
import com.entity.SzhProject;

public interface SzhProjectDao {
	//��ҳ
	public List<Map<String,Object>> queryProject(SzhPage spg);
	//������Ŀ����ѯ
	public List<SzhProject> queryPart(String comname);
	//�����û�����ѯ
	public List<SzhProject> queryUser(String user);
	//����ʱ��β�ѯ
	public List<SzhProject> queryTime(String zzz,String hhh);
	//��ѯȫ��
	public int queryitempersonCount();
	//��ѯ������Ϣ���з�װ
	public List<Map> queryAll();
	public List<Map> queryAllTwo();
}
