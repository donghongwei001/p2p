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
 * 持久层映射接口
 * @author ZXL
 *
 */
public interface ZxlUserDao {
	public List<ZxlUser> list();//查询用户表所有信息
	public int addUser(ZxlUser user);//添加用户
	public List<ZxlMyProject> listproject(String str);//查询申请项目表信息

	public List<Map> listprojecttwo(String name);
	public List<Map> listmytouzi(String name);//查询每个用户的投资


	public List<Map> listhuankuan(String name);//查询该用户还款信息
	public List<ZxlMyPersonal> listmypersonal(String str);//查询该用户的个人信息
	public List<ZxlUser> updatepwd(String pwd);//修改密码
	public List<ZxlMyProject> listpro();//查询项目信息
	public List<ZxlUser> listmoney(String user);//查询用户余额

	public List<ZxlTouzi> listtouzi();//查询所有投资项目
	
	public int seljine(String username);
	public void updatejine(int total,String username);
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
}
