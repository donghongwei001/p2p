package com.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.entity.YpgEmployee;
import com.entity.ypgPersonalForm;

public interface ypgPersonalFormService {
	//��ѯ������Ϣ
	public List<Map> getQueryPersonalForm(int userID);
	//������֤��Ϣ
	public int getPersonalForm(ypgPersonalForm pff,String username);
	//���¸�����Ϣ
	public int UpdatePersonalForm(ypgPersonalForm pff);
	//����Ա����Ϣ
	public int getInsertEmployee(YpgEmployee ee);
	//��ѯԱ����Ϣ
	public List<Map> getQueryEmployee();
	//�û���Ϣ����Ͷ�ʱ�
	public int insertInvestor(ypgPersonalForm pf,String username);
}
