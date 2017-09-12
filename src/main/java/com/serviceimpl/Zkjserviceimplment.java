package com.serviceimpl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.Zkjdaointerface;
import com.entity.ZkjInvest;
import com.entity.Zkjproject;
import com.service.Zkjservicedaointerface;
@Service
public class Zkjserviceimplment implements Zkjservicedaointerface {
	@Autowired
	private Zkjdaointerface dao;
	@Override
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

	public void addinvest(ZkjInvest zz,String name) {
		// TODO Auto-generated method stub
		
		int id=dao.quertuserid(name);
		SimpleDateFormat sm=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
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
	/*剩余可投资金额
	 * (non-Javadoc)
	 * @see com.service.Zkjservicedao#surplusinvest(int)
	 */
	@Override
	public int surplusinvest(int projectid) {
		// TODO Auto-generated method stub
	int investmoney=dao.totalmoneyinvest(projectid);
	
	int loanmoney=dao.loanmoney(projectid);
	
		return loanmoney-investmoney;
	}
	@Override
	public List<Map> queryallproject() {
		// TODO Auto-generated method stub
		
		return dao.queryallproject();
	}
	@Override
	public List<Map> personalinformation(int id) {
		// TODO Auto-generated method stub
	int  userid=dao.selectuserid(id);//用户ID
	List<Map> listp=dao.personalinformation(userid);
		return listp;
	}
	@Override
	public String queryusername(int id) {
		// TODO Auto-generated method stub
		return	dao.selectusername(id);
		
	}
	@Override
	public List<Map> investinformation(int id) {
		// TODO Auto-generated method stub
		
		return dao.investinformation(id);
	}
	public List<Map> selectinvestinformation(int id){
		return dao.selectinvestinformation(id);
	}

}
