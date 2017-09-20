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
	 * 第一次审核插入到数据库
	 */
	@Override
	public int addfirsts(YxFirsttable yf) {
		// TODO Auto-generated method stub
		return firdao.addfirst(yf);
	}
	/**
	 * 第二次审核插入到数据库
	 */
	@Override
	public int addseconds(YxFinaltable yt) {
		// TODO Auto-generated method stub
		return firdao.addsecond(yt);
	}
	/**
	 * 第一次审核成功后更新项目审核表审核状态
	 */
	@Override
	public int update(YxExamine ym) {
		// TODO Auto-generated method stub
		int flag=firdao.update(ym);
		return flag;
	}
	/**
	 * 第二次审核成功后更新第二次审核状态
	 */
	@Override
	public int updates(YxFirsttable yx) {
		// TODO Auto-generated method stub
		int flag=firdao.updatesecond(yx);
		return flag;
	}
	/**
	 * 发布项目
	 */
	@Override
	public int addfa(YxFabu yb) {
		// TODO Auto-generated method stub
		return firdao.addfabu(yb);
	}
	/**
	 * 发布项目成功后，更新项目状态
	 */
	@Override
	public void updatefina(int id) {
		// TODO Auto-generated method stub
		firdao.updatefinal(id);
	
	}
	/**
	 * 初审失败插入到项目表
	 */
	@Override
	public void onexmm(YxFabu yb) {
		// TODO Auto-generated method stub
		 firdao.onexm(yb);
	}
	/**
	 * 初审失败数据插入成功改状态
	 */
	@Override
	public void updatexmm(int id) {
		// TODO Auto-generated method stub
		firdao.updatexm(id);
	}
	/**
	 * 终审失败插入到项目表
	 */
	@Override
	public void twoxmm(YxFabu yf) {
		// TODO Auto-generated method stub
		firdao.twoxm(yf);
	}
	/**
	 * 终审失败数据插入成功改状态
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
