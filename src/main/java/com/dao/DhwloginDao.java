package com.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.entity.DhwEmpTab;



public interface DhwloginDao {
	//�����û�����ѯ�û��Ƿ� ����
	public DhwEmpTab queryUser(String user);
	//��ѯ��ɫȨ��
	public List<HashMap<String,Object>> queryrolepower(DhwEmpTab dd);
	//��ѯ��ɫ����
	public String queryrolename(int id);
	public int querycount();
	public List<Map> queryxiajia();
	public int selxiajia();
	public int selmoney();
}
