package com.serviceimpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.YxFirsttableDao;
import com.entity.YxExamine;
import com.entity.YxFabu;
import com.entity.YxFinaltable;
import com.entity.YxFirsttable;
import com.service.YxFirsttableService;
@Service
public class YxFirsttableServiceImpl implements YxFirsttableService {
	@Autowired
	private YxFirsttableDao firdao;
	/**
	 * ��һ����˲��뵽���ݿ�
	 */
	@Override
	public int addfirsts(YxFirsttable yf) {
		// TODO Auto-generated method stub
		return firdao.addfirst(yf);
	}
	/**
	 * �ڶ�����˲��뵽���ݿ�
	 */
	@Override
	public int addseconds(YxFinaltable yt) {
		// TODO Auto-generated method stub
		return firdao.addsecond(yt);
	}
	/**
	 * ��һ����˳ɹ��������Ŀ��˱����״̬
	 */
	@Override
	public int update(YxExamine ym) {
		// TODO Auto-generated method stub
		int flag=firdao.update(ym);
		return flag;
	}
	/**
	 * �ڶ�����˳ɹ�����µڶ������״̬
	 */
	@Override
	public int updates(YxFirsttable yx) {
		// TODO Auto-generated method stub
		int flag=firdao.updatesecond(yx);
		return flag;
	}
	/**
	 * ������Ŀ
	 */
	@Override
	public int addfa(YxFabu yb) {
		// TODO Auto-generated method stub
		return firdao.addfabu(yb);
	}
	/**
	 * ������Ŀ�ɹ��󣬸�����Ŀ״̬
	 */
	@Override
	public void updatefina(int id) {
		// TODO Auto-generated method stub
		firdao.updatefinal(id);
	
	}
	/**
	 * ����ʧ�ܲ��뵽��Ŀ��
	 */
	@Override
	public void onexmm(YxFabu yb) {
		// TODO Auto-generated method stub
		 firdao.onexm(yb);
	}
	/**
	 * ����ʧ�����ݲ���ɹ���״̬
	 */
	@Override
	public void updatexmm(int id) {
		// TODO Auto-generated method stub
		firdao.updatexm(id);
	}
	/**
	 * ����ʧ�ܲ��뵽��Ŀ��
	 */
	@Override
	public void twoxmm(YxFabu yf) {
		// TODO Auto-generated method stub
		firdao.twoxm(yf);
	}
	/**
	 * ����ʧ�����ݲ���ɹ���״̬
	 */
	@Override
	public void updatetxm(int id) {
		// TODO Auto-generated method stub
		firdao.updatetxmm(id);
	}
	@Override
	public void updatexiajia(String date, int id) {
		// TODO Auto-generated method stub
		firdao.updatexiajia(date, id);
	}
	@Override
	public void updatefinalstatu(int id) {
		// TODO Auto-generated method stub
		firdao.updatefinalstatu(id);
	}
	@Override
	public List<Map> selmoney(int id) {
		// TODO Auto-generated method stub
		return firdao.selmoney(id);
	}
	@Override
	public void addhuankuan(int id, String date, double qian, double lilv, Double allmoney) {
		// TODO Auto-generated method stub
		firdao.addhuankuan(id, date, qian, lilv, allmoney);
	}
	@Override
	public List<Map> selfangman(int id) {
		// TODO Auto-generated method stub
		return firdao.selfangman(id);
	}
	@Override
	public int selman(String name) {
		// TODO Auto-generated method stub
		return firdao.selman(name);
	}
	@Override
	public void addshoukuan(int userid, int projectid, String date, double money, double lilv, double benjin) {
		// TODO Auto-generated method stub
		firdao.addshoukuan(userid, projectid, date, money, lilv, benjin);
	}
	@Override
	public void updatetotalmoney(int money) {
		// TODO Auto-generated method stub
		firdao.updatetotalmoney(money);
	}
	

}
