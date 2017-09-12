package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.ZkjInvest;
import com.entity.Zkjproject;

public interface Zkjdao {
	public void saveproject(Zkjproject pp);
	public List<Map> qyeryproject();
	public List<Map> selectusers();
	public void updateuser(String str);
	public void updatestartuser(String str);
	public List<Map> selectallproject(int id);

	public void saveinvest(ZkjInvest zz);//鍚戞姇璧勮〃鎻掑叆鏁版嵁锛堟斁娆捐〃锛�

	public int quertuserid(String name);//鏍规嵁鐢ㄦ埛鍚嶆煡璇㈢敤鎴稩D
	public String queryname(int id);//鏍规嵁鐢ㄦ埛ID鏌ヨ鐢ㄦ埛鐨勭湡瀹炲鍚�
	public List<Map> queryuserinfo();
	public List<Map> queryoneuserinfo(String name);

}
