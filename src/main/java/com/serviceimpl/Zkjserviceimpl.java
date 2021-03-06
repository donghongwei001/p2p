package com.serviceimpl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.Zkjdao;
import com.dao.Zkjdaointerface;
import com.entity.ZkjInvest;
import com.entity.Zkjproject;
import com.entity.Zkjtom;
import com.service.Zkjservicedao;
@Service
public class Zkjserviceimpl implements Zkjservicedao {
	@Autowired
	private Zkjdao dao;
	@Autowired
	private Zkjdaointerface ssdao;
	@Override
	@Transactional
	public void saveproject(Zkjproject pp,String name) {
		// TODO Auto-generated method stub
		int userid=dao.quertuserid(name);
		pp.setUserid(userid);
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
	@Transactional
	public void addinvest(ZkjInvest zz,String name) {
		// TODO Auto-generated method stub
		
		int id=dao.quertuserid(name);
		SimpleDateFormat sm=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String timm=sm.format(new Date());
		zz.setInvestorid(id);
		zz.setTime(timm);
		dao.saveinvest(zz);
		Zkjtom zt=new Zkjtom();
		
		Integer investmoney=ssdao.totalmoneyinvest(zz.getSubjectid());
		
		Integer loanmoney=ssdao.loanmoney(zz.getSubjectid());
		System.out.println(investmoney+"investmoney");
		System.out.println(loanmoney+"loanmoney");
		if(investmoney==null){
			investmoney=0;
		}
		int surplusinvest=loanmoney-investmoney;
		
		zt.setNowmoney(investmoney);
		zt.setProjectid(zz.getSubjectid());
		dao.updateprojectrelease(zt);
	}
	@Override
	public String queryname(String name) {
		// TODO Auto-generated method stub
		int id=dao.quertuserid(name);
		String nn=dao.queryname(id);
		return nn;

	}
	@Override
	public List<Map> queryuserinfo() {
		// TODO Auto-generated method stub
		return dao.queryuserinfo();
	}
	@Override
	public List<Map> queryoneuserinfo(String name) {
		// TODO Auto-generated method stub
		return dao.queryoneuserinfo(name);
	}
	

}
