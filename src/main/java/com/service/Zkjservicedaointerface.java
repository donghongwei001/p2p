package com.service;

import java.util.List;
import java.util.Map;

import com.entity.ZkjInvest;
import com.entity.Zkjproject;

public interface Zkjservicedaointerface {
	

	

	public int surplusinvest(int projectid);//鍗曚釜椤圭洰鍓╀綑鎶曡祫閲戦
	public List<Map> queryallproject();//鏌ヨ鎵�湁鐨勯」鐩�
	public List<Map> personalinformation(int id);//鏍规嵁椤圭洰ID鏌ヨ涓汉淇℃伅
	public String queryusername(int id);//鏍规嵁椤圭洰id鏌ヨ鐢ㄦ埛鍛㈢О
	public List<Map> investinformation(int id);//鏍规嵁椤圭洰id鏌ヨ椤圭洰淇℃伅
	public List<Map> selectinvestinformation(int id);//鏍规嵁椤圭洰id鏌ヨ鎶曟爣璁板綍
}