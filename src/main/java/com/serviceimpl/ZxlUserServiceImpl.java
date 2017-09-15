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
 * 业务层
 * @author ZXL
 *
 */
@Service
public class ZxlUserServiceImpl implements ZxlUserService{
	@Autowired
	private ZxlUserDao userdao;
	/**
	 * 查询用户表的所有信息
	 */
	
	@Override
	public List<ZxlUser> list() {
		List<ZxlUser> list=userdao.list();
		return list;
	}
	/**
	 * 判断前台的值于数据库用户名是否有相同
	 * 根据不同的状况
	 * 当值相同时 -3 不能插入
	 * 其他可以可以插入
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
	 * 判断前台的用户名和密码与数据的是否一致
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
	 * 查询该用户的申请的项目
	 */
	@Override
	public List<ZxlMyProject> listproject(String str) {
		List<ZxlMyProject> list=userdao.listproject(str);
		return list;
	}
	/**
	 * 查询该用户投资的项目
	 */
	@Override
	public List<Map> listmytouzi(String str) {
		List<Map> list=userdao.listmytouzi(str);
		return list;
	}
	/**
	 * 查询该用户的还款信息
	 */
	@Override

	public List<ZxlMyHuankuan> listhuankuan(String str) {
		List<ZxlMyHuankuan> list=userdao.listhuankuan(str);
		return list;
	}
	/**
	 * 查询该用户的基本信息
	 */
	@Override
	public List<ZxlMyPersonal> listmypersonal(String str) {
		List<ZxlMyPersonal> list=userdao.listmypersonal(str);
		return list;
	}
	/**
	 * 根据用户名修改用户密码
	 */
	@Override
	public List<ZxlUser> updatepwd(String pwd) {
		return userdao.updatepwd(pwd);		
	}
	/**
	 * 查询项目详情
	 */
	@Override
	public List<ZxlMyProject> listpro() {
		List<ZxlMyProject> list=userdao.listpro();
		return list;
	}
	/**
	 * 查询用户余额
	 */
	@Override
	public List<ZxlUser> listmoney(String user) {
		List<ZxlUser> zxluser= userdao.listmoney(user);
		return zxluser;
	}
	/**
	 * 查询所有投资项目
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
