package com.dao;

import java.util.List;

import com.entity.ZxlMyHuankuan;
import com.entity.ZxlMyPersonal;
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
	public List<ZxlMyProject> listproject(String str);//��ѯ������Ŀ����Ϣ
	public List<ZxlMyTouzi> listmytouzi(String str);//��ѯÿ���û���Ͷ��
	public List<ZxlMyHuankuan> listhuankuan(String str);//��ѯ���û�������Ϣ
	public List<ZxlMyPersonal> listmypersonal(String str);//��ѯ���û��ĸ�����Ϣ
	public List<ZxlUser> updatepwd(String pwd);//�޸�����
	public List<ZxlMyProject> listpro();//��ѯ��Ŀ��Ϣ
	public List<ZxlUser> listmoney(String user);//��ѯ�û����
	
}
