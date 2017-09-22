package com.service;

import java.util.List;
import java.util.Map;

import com.entity.Power;
import com.entity.Role;

public interface DhwroleService {
	//��ѯ��ɫ
	public List<Map> selectrole();
	//��ѯĳ����ɫ
	public List<Map> queryrole(String id);
	//��ѯĳ����ɫ��Ȩ��
	public List<Map> selectpower(String id);
	//��ѯĳ��Ȩ�޵���Ȩ��
	public List<Map> selectson(String id);
	//����һ����ɫ
	public int addrole(Role role);
	//����һ����ɫȨ��
	public void addrolepower(String roleid,String powerid);
	//����ĳ����ɫ��Ȩ��
	public List<Map> selrolepower(String id);
	//���� ĳ����ɫ��ĳ��Ȩ��
	public List<Map> selonerolepower(String roleid,String powerid);
	//���Ľ�ɫ
	public void updaterole(Role role);
	//ɾ����ɫ
	public void deleterole(String id);
	//ɾ����ɫȨ��
	public void deleterolepower(String id);
}
