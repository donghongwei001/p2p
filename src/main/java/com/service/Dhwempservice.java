package com.service;

import java.util.List;
import java.util.Map;

import com.entity.DhwEmpTab;

public interface Dhwempservice {
	//��ѯ����Ա��
	public List<Map> queryemp();
	//��ѯĳ��Ա��
	public List<Map> selemp(String name);
	//����һ��Ա��
	public void addemp(DhwEmpTab empTab);
	//ɾ��һ��Ա��
	public void deleteemp(int id);
	//ɾ��һ��Ա���Ľ�ɫ
	public void deleteemprole(int id);
	//��ѯһ��Ա��
	public List<Map> seloneemp(int id);
	//����һ��Ա��
	public void updateemp(DhwEmpTab empTab);
	//��ѯһ��Ա���Ľ�ɫ
	public List<Map> selemprole(int id);
	//����һ��Ա���Ľ�ɫ
	public void addemprole(int id1,String id);
}
