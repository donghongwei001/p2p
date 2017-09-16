package com.serviceimpl;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ZxlUserDao;
import com.entity.ZxlMyHuankuan;
import com.entity.ZxlMyPersonal;
import com.entity.ZxlMyProject;
import com.entity.ZxlTouzi;
import com.entity.ZxlUser;
import com.service.ZxlUserService;
/**
 * ҵ���
 * @author ZXL
 *
 */
@Service
public class ZxlUserServiceImpl implements ZxlUserService{
	@Autowired
	private ZxlUserDao userdao;
	/**
	 * ��ѯ�û����������Ϣ
	 */
	
	@Override
	public List<ZxlUser> list() {
		List<ZxlUser> list=userdao.list();
		return list;
	}
	/**
	 * �ж�ǰ̨��ֵ�����ݿ��û����Ƿ�����ͬ
	 * ���ݲ�ͬ��״��
	 * ��ֵ��ͬʱ -3 ���ܲ���
	 * �������Կ��Բ���
	 */
	@Override
	public int addUser(ZxlUser user) {
		List<ZxlUser> list=userdao.list();
		int flag=0;
		for(int i=0; i<list.size(); i++){
			if(list.get(i).getUsername().equals(user.getUsername())){
				flag=-3;
			}
		}
		if(flag==-3){
			return 0;
		}else{
			return userdao.addUser(user);
		}
	}
	/**
	 * �ж�ǰ̨���û��������������ݵ��Ƿ�һ��
	 */
	@Override
	public Boolean find(ZxlUser user) {
		List<ZxlUser> list=userdao.list();
		int flag=0;
		for(int i=0;i<list.size();i++){
			if(list.get(i).getUsername().equals(user.getUsername())&&list.get(i).getPwd().equals(user.getPwd())){
				flag=1;
			}
		}
		if(flag==1){
			return true;
		}
		else{
			return false;
		}
	}
	/**
	 * ��ѯ���û����������Ŀ
	 */
	@Override
	public List<ZxlMyProject> listproject(String str) {
		List<ZxlMyProject> list=userdao.listproject(str);
		return list;
	}
	/**
	 * ��ѯ���û�Ͷ�ʵ���Ŀ
	 */
	@Override
	public List<Map> listmytouzi(String str) {
		List<Map> list=userdao.listmytouzi(str);
		return list;
	}
	/**
	 * ��ѯ���û��Ļ�����Ϣ
	 */
	@Override

	public List<ZxlMyHuankuan> listhuankuan(String str) {
		List<ZxlMyHuankuan> list=userdao.listhuankuan(str);
		return list;
	}
	/**
	 * ��ѯ���û��Ļ�����Ϣ
	 */
	@Override
	public List<ZxlMyPersonal> listmypersonal(String str) {
		List<ZxlMyPersonal> list=userdao.listmypersonal(str);
		return list;
	}
	/**
	 * �����û����޸��û�����
	 */
	@Override
	public List<ZxlUser> updatepwd(String pwd) {
		return userdao.updatepwd(pwd);		
	}
	/**
	 * ��ѯ��Ŀ����
	 */
	@Override
	public List<ZxlMyProject> listpro() {
		List<ZxlMyProject> list=userdao.listpro();
		return list;
	}
	/**
	 * ��ѯ�û����
	 */
	@Override
	public List<ZxlUser> listmoney(String user) {
		List<ZxlUser> zxluser= userdao.listmoney(user);
		return zxluser;
	}
	/**
	 * ��ѯ����Ͷ����Ŀ
	 */
	@Override
	public List<ZxlTouzi> listtouzi() {
		List<ZxlTouzi> list=userdao.listtouzi();
		return list;
	}
	@Override
	public void updatejine(String username, int money) {
		// TODO Auto-generated method stub
		int jine=userdao.seljine(username);
		System.out.println("11111111111111");
		int total=money+jine;
		System.out.println(total);
		userdao.updatejine(total, username);
	}
	@Override
	public void updatezero(String username) {
		// TODO Auto-generated method stub
		userdao.updatezero(username);
	}
	@Override
	public List<Map> listprojecttwo(String name) {
		// TODO Auto-generated method stub
		return userdao.listprojecttwo(name);
	}
	@Override
	public List<Map> seljiekuanren(int id) {
		// TODO Auto-generated method stub
		return userdao.seljiekuanren(id);
	}
	@Override
	public List<Map> selhuankuan(String name, int id) {
		// TODO Auto-generated method stub
		
		return userdao.selhuankuan(name, id);
	}
	@Override
	public List<Map> selchushen(String name) {
		// TODO Auto-generated method stub
		return userdao.selchushen(name);
	} 
	
	@Override
	public List<Map> selzhongshen(String name) {
		// TODO Auto-generated method stub
		return userdao.selzhongshen(name);
	}	
	
}
