package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.ypgHuanK;

public interface YpgRoleDao {
	public List<Map> queryRole();
	//��ѯ�����û�����Ϣ
	public List<Map> queryPersonals();
	//δ������Ϣ��ѯ
	public List<Map> queryRepayMoney();
	//�ѻ�����Ϣ��ѯ
	public List<Map> queryRepay();
	
}
