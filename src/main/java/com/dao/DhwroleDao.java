package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Role;

public interface DhwroleDao {
	//��ѯ��ɫ
	public List<Map> selectrole();
	//��ѯһ����ɫ
	public List<Map> queryrole(String id);
	//��ѯһ����ɫ��Ȩ��
	public List<Map> selectpower(String id);
	//��ѯһ��Ȩ�޵���Ȩ��
	public List<Map> selectson(String id);
	//����һ����ɫ
	public int addrole(Role role);
	//����һ����ɫ��Ȩ��
	public void addrolepower(String roleid,String powerid);
	//������ɫ���е�Ȩ��
	public List<Map> selrolepower(String id);
	//����һ����ɫ��Ȩ��
	public List<Map> selonerolepower(String roleid,String powerid);
	//����һ����ɫ
	public void updaterole(Role role);
	//ɾ��һ����ɫ
	public void deleterole(String id);
	//ɾ��һ����ɫ���е�Ȩ��
	public void deleterolepower(String id);
}