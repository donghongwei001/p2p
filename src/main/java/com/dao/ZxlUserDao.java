package com.dao;

import java.util.List;

import com.entity.ZxlMyProject;
import com.entity.ZxlMyTouzi;
import com.entity.ZxlUser;
/**
 * �־ò�ӳ��ӿ�
 * @author ZXL
 *
 */
public interface ZxlUserDao {
	public List<ZxlUser> list();//��ѯ�û���������Ϣ
	public int addUser(ZxlUser user);//����û�
	public List<ZxlMyProject> listproject();//��ѯ������Ŀ����Ϣ
	public List<ZxlMyTouzi> listmytouzi();//��ѯÿ���û���Ͷ��
}
