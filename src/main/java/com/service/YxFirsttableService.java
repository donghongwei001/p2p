package com.service;

import java.util.List;
import java.util.Map;

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
	//����ʧ�ܲ��뵽��Ŀ��
	public void onexmm(YxFabu yb);
	//����ʧ�����ݲ���ɹ���״̬
	public void updatexmm(int id);
	//����ʧ�ܲ��뵽��Ŀ��
	public void twoxmm(YxFabu yf);
	//����ʧ�����ݲ���ɹ���״̬
	public void updatetxm(int id);
	public void updatexiajia(String date,int id);
	public void updatefinalstatu(int id);
	public List<Map> selmoney(int id);
	public void addhuankuan(int id,String date,double qian,double lilv,Double allmoney);
}
