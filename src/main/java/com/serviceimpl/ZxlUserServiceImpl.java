package com.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ZxlUserDao;
import com.entity.ZxlMyProject;
import com.entity.ZxlMyTouzi;
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
	public List<ZxlMyProject> listproject() {
		List<ZxlMyProject> list=userdao.listproject();
		return list;
	}
	/**
	 * 查询该用户投资的项目
	 */
	@Override
	public List<ZxlMyTouzi> listmytouzi() {
		List<ZxlMyTouzi> list=userdao.listmytouzi();
		return list;
	}

}
