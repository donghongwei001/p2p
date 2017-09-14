package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.ZxlMyHuankuan;
import com.entity.ZxlMyPersonal;
import com.entity.ZxlMyProject;
import com.entity.ZxlMyTouzi;
import com.entity.ZxlTouzi;
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

	public List<Map> listprojecttwo(String name);
	public List<Map> listmytouzi(String name);//��ѯÿ���û���Ͷ��


	public List<ZxlMyHuankuan> listhuankuan(String str);//��ѯ���û�������Ϣ
	public List<ZxlMyPersonal> listmypersonal(String str);//��ѯ���û��ĸ�����Ϣ
	public List<ZxlUser> updatepwd(String pwd);//�޸�����
	public List<ZxlMyProject> listpro();//��ѯ��Ŀ��Ϣ
	public List<ZxlUser> listmoney(String user);//��ѯ�û����

	public List<ZxlTouzi> listtouzi();//��ѯ����Ͷ����Ŀ
	

	public int seljine(String username);
	public void updatejine(int total,String username);
	public void updatezero(String username);
	public List<Map> seljiekuanren(int id);
	public List<Map> selhuankuan(String name,int id);
	public List<Map> selchushen(String name);
	public List<Map> selzhongshen(String name);

}
