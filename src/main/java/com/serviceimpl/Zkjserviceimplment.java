package com.serviceimpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.Zkjdao;
import com.dao.Zkjdaointerface;
import com.entity.Zkjinvestmoney;
import com.entity.Zkjinvestor;
import com.entity.Zkjmoney;
import com.entity.Zkjzong;
import com.service.Zkjservicedaointerface;
@Service
public class Zkjserviceimplment implements Zkjservicedaointerface {
	@Autowired
	private Zkjdaointerface dao;
	@Autowired
	private Zkjdao zkjdao;
	/*鍓╀綑鍙姇璧勯噾棰�
	 * (non-Javadoc)
	 * @see com.service.Zkjservicedao#surplusinvest(int)
	 */
	@Override
	@Transactional
	public int surplusinvest(int projectid) {
		// TODO Auto-generated method stub
		Integer investmoney=dao.totalmoneyinvest(projectid);
	
		Integer loanmoney=dao.loanmoney(projectid);
		System.out.println(investmoney+"investmoney");
		System.out.println(loanmoney+"loanmoney");
		if(investmoney==null){
			investmoney=0;
		}
		return loanmoney-investmoney;
	}
	@Override
	public List<Map> queryallproject() {
		// TODO Auto-generated method stub
		
		return dao.queryallproject();
	}
	@Override
	@Transactional
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
	@Override
	public void saveinvestor(Zkjinvestor zz,String name) {
		// TODO Auto-generated method stub
		
		int id=zkjdao.quertuserid(name);
		zz.setId(id);
		System.out.println(zz);
		System.out.println("asdad");
		dao.saveinvestor(zz);
	}
	@Override
	public String selectid(String name) {
		// TODO Auto-generated method stub
		int id=dao.selectuseri(name);
		return dao.selectinvector(id);
	}
	@Override
	public Zkjzong countmoney() {
		// TODO Auto-generated method stub
		return dao.countmoney();
	}
	@Override
	@Transactional
	public void totalmoney(String name,String mm,int id) {
		// TODO Auto-generated method stub
		double dd=dao.selectusermoney(name);//投资人用户的钱
	//	double total=dd+Double.parseDouble(mm);//用户投资的钱
		
		int userid=dao.selectuserid(id);
		double aas=dao.selectuseridmoney(userid);//借款人的账户钱
		double total=aas+Double.parseDouble(mm);//用户投资的钱+借款人账户的钱
		Zkjinvestmoney zz=new Zkjinvestmoney();
			zz.setId(userid);
			zz.setMoney(aas);
		dao.replaceinvestormoney(zz);//更新借款人的账户
		double sheng=dd-Double.parseDouble(mm);
		Zkjmoney zk=new Zkjmoney();
		zk.setMoney(sheng);
		zk.setName(name);
		dao.updateusermoney(zk);
	}
	@Override
	public double selectusermoney(String username) {
		// TODO Auto-generated method stub
		return dao.selectusermoney(username);
	}
	@Override
	public int selectprojectstatus(int id) {
		// TODO Auto-generated method stub
	
		return dao.selectprojectstatus(id);
	}

}
