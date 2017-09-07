package com.serviceimpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.Zkjdao;
import com.entity.ZkjInvest;
import com.entity.Zkjproject;
import com.service.Zkjservicedao;
@Service
public class Zkjserviceimpl implements Zkjservicedao {
	@Autowired
	private Zkjdao dao;
	@Override
	public void saveproject(Zkjproject pp) {
		// TODO Auto-generated method stub
		dao.saveproject(pp);
	}
	@Override
	public List<Map> selectproject() {
		// TODO Auto-generated method stub
		return dao.qyeryproject();
	}
	@Override
	public List<Map> selectusers() {
		// TODO Auto-generated method stub
		return dao.selectusers();
	}
	@Override
	public void updateuser(String str) {
		// TODO Auto-generated method stub
		dao.updateuser(str);
	}
	@Override
	public void updatestartuser(String str) {
		// TODO Auto-generated method stub
		dao.updatestartuser(str);
	}
	@Override
	public List<Map> selectallproject(int id) {
		// TODO Auto-generated method stub
		return dao.selectallproject( id);
	}
	@Override

	public void addinvest(ZkjInvest zz) {
		// TODO Auto-generated method stub
		dao.saveinvest(zz);
	}
	public String queryname(String name) {
		// TODO Auto-generated method stub
		int id=dao.quertuserid(name);
		String nn=dao.queryname(id);
		return nn;

	}
	

}
