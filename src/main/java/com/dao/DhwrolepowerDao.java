package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Power;

public interface DhwrolepowerDao {
	//��ѯȨ��
	public List<Map> queryPower();
	//��ѯĳ��Ȩ��
	public List<Map> querypid();
	//����һ��Ȩ��
	public Integer addpower(Power power);
	//ɾ��һ��Ȩ��
	public void deletepower(String id);
	//����һ��Ȩ��
	public List<Map> selonepower(String id);
	//����һ��Ȩ��
	public void updatepower(Power power);
	//��ѯһ��Ȩ��
	public List<Map> selpower(String id);
}
