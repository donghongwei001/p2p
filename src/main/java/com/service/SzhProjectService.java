package com.service;

import java.util.List;
import java.util.Map;

import com.entity.SzhPage;
import com.entity.SzhProject;

public interface SzhProjectService {
	//��ҳ
	public Map<String,Object> queryProject(SzhPage spg);
	//������Ŀ����ѯ
	public List<SzhProject> queryPart(String comname);
	//�����û�����ѯ
	public List<SzhProject> queryUser(String user);
	//����ʱ��β�ѯ
	public List<SzhProject> queryTime(String zzz,String hhh);
	//��ѯ���н��з�װ
	public String queryAll();
	public String queryAllTwo();
}
