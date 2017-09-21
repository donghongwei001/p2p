package com.serviceimpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.zhishouDao;
import com.service.zhishouservice;
@Service
public class zhishouserviceimpl implements zhishouservice{

	@Autowired
	private zhishouDao zhishoudao;
	@Override
	public int querytotalmoney() {
		// TODO Auto-generated method stub
		return zhishoudao.querytotalmoney();
	}
	@Override
	public void addshouru(int id, String date, double money) {
		// TODO Auto-generated method stub
		zhishoudao.addshouru(id, date, money);
	}
	@Override
	public void addzhichu(int id, String date, double money) {
		// TODO Auto-generated method stub
		zhishoudao.addzhichu(id, date, money);
	}
	@Override
	public List<Map> selshouzhi() {
		// TODO Auto-generated method stub
		return zhishoudao.selshouzhi();
	}
	@Override
	public List<Map> selyuqi(String name) {
		// TODO Auto-generated method stub
		return zhishoudao.selyuqi(name);
	}
	@Override
	public void updatenew(String date, int day, double money, int id, double qian) {
		// TODO Auto-generated method stub
		zhishoudao.updatenew(date, day, money, id, qian);
	}

}
