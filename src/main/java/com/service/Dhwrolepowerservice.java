package com.service;

import java.util.List;
import java.util.Map;

import com.entity.Power;

public interface Dhwrolepowerservice {
	//��ѯ����Ȩ��
	public List<Map> queryPower();
	//��ѯĳ��Ȩ��
	public List<Map> querypid();
	//����һ��Ȩ��
	public Integer addpower(Power power);
	//ɾ��һ��Ȩ��
	public void deletepower(String id);
	//��ѯһ��Ȩ��
	public List<Map> selonepower(String id);
	//����һ��Ȩ��
	public void updatepower(Power power);
	//��ѯȨ��
	public List<Map> selpower(String id);
}
