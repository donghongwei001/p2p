package com.service;

import java.util.List;
import java.util.Map;

public interface YpgRepaymentService {
	//�����
	public List<Map> queryRepayment();
	//Ͷ���
	public List<Map> queryPublish();
	//Ͷ����ϸ��Ϣ��ѯ
	public List<Map> queryMinute();
}
