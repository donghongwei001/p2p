package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.YxExamine;
import com.entity.YxFabu;
import com.entity.YxFinaltable;
import com.entity.YxFirsttable;

public interface YxFirsttableDao {
	
	//��һ����˲��뵽���ݿ�
	public void addfirst(YxFirsttable yf); 
	//�ڶ�����˲��뵽���ݿ�
	public void addsecond(YxFinaltable yt);
	//��һ����˳ɹ��������Ŀ��˱����״̬
	public void update(int id);
	//�ڶ�����˳ɹ�����µڶ������״̬
	public void updatesecond(int id);
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
	public void updatexiajia(String date,int id);
	public void updatefinalstatu(int id);
	public List<Map> selmoney(int id);
	public void addhuankuan(int id,String date,Double money,Double lilv,double allmoney);
	public List<Map> selfangman(int id);
	public int selman(String name);
	public void addshoukuan(int userid,int projectid,String date,double money,double lilv,double benjin);
	public void updatetotalmoney(int money);
}
