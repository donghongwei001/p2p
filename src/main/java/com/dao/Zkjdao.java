package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.ZkjInvest;
import com.entity.Zkjproject;
import com.entity.Zkjtom;

public interface Zkjdao {
	public void saveproject(Zkjproject pp);//申请的项目插入到数据库
	public List<Map> qyeryproject();//二次审核项目界面的查询
	public List<Map> selectusers();//查询所有的用户
	public void updateuser(String str);//更新用户的是否禁用状态
	public void updatestartuser(String str);//更新用户的是否禁用状态
	public List<Map> selectallproject(int id);//前台投资时的单个项目查询

	public void saveinvest(ZkjInvest zz);//鍚戞姇璧勮〃鎻掑叆鏁版嵁锛堟斁娆捐〃锛�

	public int quertuserid(String name);//鏍规嵁鐢ㄦ埛鍚嶆煡璇㈢敤鎴稩D
	public String queryname(int id);//鏍规嵁鐢ㄦ埛ID鏌ヨ鐢ㄦ埛鐨勭湡瀹炲鍚�
	public List<Map> queryuserinfo();
	public List<Map> queryoneuserinfo(String name);
	public void updateprojectrelease(Zkjtom zt);//更新已经筹到多少钱
}
