package com.service;

import java.util.List;
import java.util.Map;

import com.entity.Fabu;
import com.entity.Outtime;

public interface YxExamineService {
	//��ѯ��һ��Ҫ��˵���Ŀ
	public List<Map>queryexam();
	//��ѯ���ڵ���Ŀ
	public List<Outtime> queryx();
	//��ѯ��Ҫ������˵���Ŀ
	public List<Map>queryftt();
	//�������ʱ�鿴��Ŀ����
	public List<Map> queryss(int id);
	//��ѯҪ��������Ŀ
	public List<Map> queryfa();
	//��ѯ��һ�����ûͨ������Ŀ
	public List<Map> querynotone();
	//��ѯ�ڶ������ûͨ������Ŀ
	public List<Map> querytwo();
	//һ����˸����û�id��ѯ�û���֤��Ϣ
	public List<Map> queryuserid(int id);
	//id��ѯ����
	public List<Map> queryf(int id);
	//�鿴�����У��¼ܵ���Ŀ����
	public List<Map>queryde(int id);

} 
