package com.service;

import java.util.List;
import java.util.Map;

public interface YpgRoleService {
	public List<Map> getQueryRole();
	//������ϸ��Ϣ��ѯ
	public List<Map> queryPersonals();
	//δ������Ϣ
	public List<Map> queryRepayMoney();
	//�ѻ�����Ϣ��ѯ
	public List<Map> queryRepay();
}
