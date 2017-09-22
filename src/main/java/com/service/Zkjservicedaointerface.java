package com.service;

import java.util.List;
import java.util.Map;

import com.entity.Zkjinvestor;
import com.entity.Zkjzong;

public interface Zkjservicedaointerface {
	

	

	public int surplusinvest(int projectid);//鍗曚釜椤圭洰鍓╀綑鎶曡祫閲戦
	public List<Map> queryallproject();//鏌ヨ鎵�湁鐨勯」鐩�
	public List<Map> personalinformation(int id);//鏍规嵁椤圭洰ID鏌ヨ涓汉淇℃伅
	public String queryusername(int id);//鏍规嵁椤圭洰id鏌ヨ鐢ㄦ埛鍛㈢О
	public List<Map> investinformation(int id);//鏍规嵁椤圭洰id鏌ヨ椤圭洰淇℃伅
	public List<Map> selectinvestinformation(int id);//鏍规嵁椤圭洰id鏌ヨ鎶曟爣璁板綍
	public void saveinvestor(Zkjinvestor zz,String name);//保存投资人的身份信息
	public String selectid(String name);//查询投资人有没有认证
	public Zkjzong countmoney();//查询总投资
	public void totalmoney(String name,String mm,int id);//计算自己总的money并更新导数据库
	public double selectusermoney(String username);//根据用户名查询money
	public int selectprojectstatus(int id);//根据项目id查询项目状态
}
