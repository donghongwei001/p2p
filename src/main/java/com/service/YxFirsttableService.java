package com.service;

import com.entity.YxExamine;
import com.entity.YxFabu;
import com.entity.YxFinaltable;
import com.entity.YxFirsttable;

public interface YxFirsttableService {
	//��һ����˲��뵽���ݿ�
	public int addfirsts(YxFirsttable yf);
	//�ڶ�����˲��뵽���ݿ�
	public int addseconds(YxFinaltable yt);
	//��һ����˳ɹ��������Ŀ��˱����״̬
	public int update(YxExamine ym);
	//�ڶ�����˳ɹ�����µڶ������״̬
	public int updates(YxFirsttable yx);
	//������Ŀ�����뵽��Ŀ������
	public int addfa(YxFabu yb);
	//������Ŀ�ɹ��󣬸�����Ŀ״̬
	public void updatefina(int id);
}
