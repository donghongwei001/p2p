package com.service;

import java.util.List;

import com.entity.ZxlUser;
/**
 * 
 * @author ZXL
 *
 */
public interface ZxlUserService {
	public List<ZxlUser> list();//��ѯ�û���������Ϣ
	public int addUser(ZxlUser user);//����û�
	public Boolean find(ZxlUser zu);//�����û����������ѯ�û�
}
