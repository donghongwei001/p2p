package com.serviceimpl;

import java.text.SimpleDateFormat;
import java.util.Date;
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
	public void updateuser(String name) {
		// TODO Auto-generated method stub
		String[] users=name.split(",");
		for(int i=0;i<users.length;i++){
			dao.updateuser(users[i]);
		}
		
	}
	@Override
	public void updatestartuser(String name) {
		// TODO Auto-generated method stub
		String[] arr=name.split(",");
		for(int i=0;i<arr.length;i++){
			dao.updatestartuser(arr[i]);
		}
		
	}
	@Override
	public List<Map> selectallproject(int id) {
		// TODO Auto-generated method stub
	
		return dao.selectallproject( id);
		
	}
	@Override

	public void addinvest(ZkjInvest zz,String name) {
		// TODO Auto-generated method stub
		
		int id=dao.quertuserid(name);
		SimpleDateFormat sm=new SimpleDateFormat("yyyy-MM-dd");
		String timm=sm.format(new Date());
		zz.setInvestorid(id);
		zz.setTime(timm);
		dao.saveinvest(zz);
	}
	@Override
	public String queryname(String name) {
		// TODO Auto-generated method stub
		int id=dao.quertuserid(name);
		String nn=dao.queryname(id);
		return nn;

	}
	

}
