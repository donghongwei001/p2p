package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.ZkjInvest;
import com.entity.Zkjproject;

public interface Zkjdaointerface {
	public void saveproject(Zkjproject pp);//鐢宠鐨勯」鐩彃鍏ュ埌鏁版嵁搴�
	public List<Map> qyeryproject();//浜屾瀹℃牳椤圭洰鐣岄潰鐨勬煡璇�
	public List<Map> selectusers();//鏌ヨ鎵�湁鐨勭敤鎴�
	public void updateuser(String str);//鏇存柊鐢ㄦ埛鐨勬槸鍚︾鐢ㄧ姸鎬�
	public void updatestartuser(String str);//鏇存柊鐢ㄦ埛鐨勬槸鍚︾鐢ㄧ姸鎬�
	public List<Map> selectallproject(int id);//鍓嶅彴鎶曡祫鏃剁殑鍗曚釜椤圭洰鏌ヨ

	public void saveinvest(ZkjInvest zz);//鍚戞姇璧勮〃鎻掑叆鏁版嵁锛堟斁娆捐〃锛�


	public int quertuserid(String name);//根据用户名查询用户ID
	public String queryname(int id);//根据用户ID查询用户的真实姓名
	public int totalmoneyinvest(int projectid);//查询单个项目已投资的总钱数
	public int loanmoney(int projectid);//查询单个项目借款金额
	public List<Map> queryallproject();//查询所有的项目
	public int selectuserid(int id); //根据项目id查询借款人id
	public String selectusername(int id);//根据用户ID查询用户呢称
	public List<Map> personalinformation(int id);//根据用户id查询用户的个人信息
	public List<Map> investinformation(int id);//根据项目id查询项目信息
	public List<Map> selectinvestinformation(int id);//根据项目id查询投标记录
}

