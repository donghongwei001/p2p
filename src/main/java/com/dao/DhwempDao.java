package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.DhwEmpTab;

public interface DhwempDao {
	//��ѯ����Ա��
	public List<Map> queryemp();
	//��ѯĳһ��Ա��
	public List<Map> selemp(String name);
	//����һ��Ա��
	public void addemp(DhwEmpTab empTab);
	//ɾ��һ��Ա��
	public void deleteemp(int id);
	//ɾ��һ��Ա�������н�ɫ
	public void deleteemprole(int id);
	//����һ��Ա��
	public List<Map> seloneemp(int id);
	//����һ��Ա��
	public void updateemp(DhwEmpTab empTab);
	//����Ա�����еĽ�ɫ
	public List<Map> selemprole(int id);
	//����Ա���Ľ�ɫ
	public void addemprole(int id1,String id);
}
