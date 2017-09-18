package com.dao;


import java.util.List;
import java.util.Map;

import com.entity.YpgEmployee;
import com.entity.ypgPersonalForm;

public interface ypgPersonalFormDao {
	//�û���ϸ��Ϣ��ѯ
	public List<Map> queryPersonalForm(int userID);
	//�û���Ϣ�Ĳ���
	public int insertPersonalForm(ypgPersonalForm pf);
	//�û���Ϣ�ĸ���
	public int updatePersonalForm(ypgPersonalForm pf);
	//Ա����Ϣ�Ĳ���
	public int insertEmployee(YpgEmployee ee);
	//Ա����Ϣ�Ĳ�ѯ
	public List<Map> queryEmployee();
	//�û���Ϣ����Ͷ�ʱ�
	public int insertInvestor(ypgPersonalForm pf);
}
