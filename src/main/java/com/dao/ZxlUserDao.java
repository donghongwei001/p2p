package com.dao;

import java.util.List;

import com.entity.ZxlUser;
/**
 * �־ò�ӳ��ӿ�
 * @author ZXL
 *
 */
public interface ZxlUserDao {
	public List<ZxlUser> list();//��ѯ�û���������Ϣ
	public int addUser(ZxlUser user);//����û�
	//public List<ZxlUser> find(ZxlUser zu);//�����û����������ѯ�û�
}
