package com.dao;

import com.entity.YxExamine;
import com.entity.YxFabu;
import com.entity.YxFinaltable;
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
	//������Ŀ�����뵽��Ŀ������
	public int addfabu(YxFabu yb);
	//������Ŀ�ɹ��󣬸�����Ŀ״̬ 
	public void updatefinal(int id);
	//����ʧ�ܲ��뵽��Ŀ��
	public void onexm(YxFabu yb);
	//����ʧ�����ݲ���ɹ���״̬
	public void updatexm(int id);
	//����ʧ�ܲ��뵽��Ŀ��
	public void twoxm(YxFabu yf);
	//����ʧ�����ݲ���ɹ���״̬
	public void updatetxmm(int id);
}
