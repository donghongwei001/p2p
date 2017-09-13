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

	/*鍓╀綑鍙姇璧勯噾棰�
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
	int  userid=dao.selectuserid(id);//鐢ㄦ埛ID
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
