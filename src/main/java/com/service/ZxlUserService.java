package com.service;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import com.entity.ZxlMyHuankuan;
import com.entity.ZxlMyPersonal;
import com.entity.ZxlMyProject;
import com.entity.ZxlMyTouzi;
import com.entity.ZxlTouzi;
import com.entity.ZxlUser;
import com.entity.ypgHuanK;
/**
 * 
 * @author ZXL
 *
 */
public interface ZxlUserService {
	public List<ZxlUser> list();//��ѯ�û���������Ϣ
	public int addUser(ZxlUser user);//����û�
	public Boolean find(ZxlUser zu);//�����û����������ѯ�û�
	public List<ZxlMyProject> listproject(String str);//��ѯ������Ŀ����Ϣ

	public List<Map> listprojecttwo(String name);
	public List<Map> listmytouzi(String str);//��ѯÿ���û���Ͷ��

	public List<Map> listhuankuan(String str);//��ѯ���û��Ļ�����Ϣ
	public List<ZxlMyPersonal> listmypersonal(String str);//��ѯ���û��ĸ�����Ϣ
	public List<ZxlUser> updatepwd(String pwd);//�޸�����
	public List<ZxlMyProject> listpro();//��ѯ��Ŀ��Ϣ
	public List<ZxlUser> listmoney(String user);//��ѯ�û����

	public List<ZxlTouzi> listtouzi();//��ѯ����Ͷ����Ŀ
	public int seljine(String username);
	public void updatejine(String username,int money);//������
	public void updatezero(String username);
	public List<Map> seljiekuanren(int id);
	public List<Map> selhuankuan(String name,int id);
	public List<Map> selchushen(String name);
	public List<Map> selzhongshen(String name);
	public List<Map> seltime(int id);
	public void updatemoney(double money,String name);
	public void updatestatus(int id,double money);
	public void updateshoukuan(int id,String date);
	public List<Map> seluserid(int id,String date);
	public int seljinqian(int id);
	public int selgaihuankuan(String name);
	public int seluser(int id);
	public String selusername(int userid);
	public int selyuqi(String name);
}
