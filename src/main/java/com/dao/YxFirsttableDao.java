package com.dao;

import com.entity.YxExamine;
import com.entity.YxFinaltable;
import com.entity.YxFirst;
import com.entity.YxFirsttable;

public interface YxFirsttableDao {
	
	//��һ����˲��뵽���ݿ�
	public int addfirst(YxFirsttable yf); 
	//�ڶ�����˲��뵽���ݿ�
	public int addsecond(YxFinaltable yt);
	//��һ����˳ɹ��������Ŀ��˱����״̬
	public int update(YxExamine ym);
	//�ڶ�����˳ɹ�����µڶ������״̬
	public int updatesecond(YxFirsttable yx);
}
