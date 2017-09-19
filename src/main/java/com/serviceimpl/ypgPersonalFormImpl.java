package com.serviceimpl;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.Zkjdao;
import com.dao.ypgPersonalFormDao;
import com.entity.YpgEmployee;
import com.entity.ypgPersonalForm;
import com.service.ypgPersonalFormService;

@Service
public class ypgPersonalFormImpl implements ypgPersonalFormService{
	@Autowired
	private ypgPersonalFormDao pfDao;
	@Autowired
	private Zkjdao dao;
	
	@Override
	public List<Map> getQueryPersonalForm(int userID) {
		// TODO Auto-generated method stub
		return pfDao.queryPersonalForm(userID);
	}
	
	/**
	 * 插入个人认证信息
	 */
	@Override
	public int getPersonalForm(ypgPersonalForm pf,String username) {
		int userID=dao.quertuserid(username);
		pf.setUserID(userID);
		pfDao.insertPersonalForm(pf);
		return userID;
	}
	
	
	/*@Override
	public int UpdatePersonalForm(ypgPersonalForm pff) {
		// TODO Auto-generated method stub
		return pfDao.updatePersonalForm(pff);
	}
	
	@Override
	public List<Map> getQueryEmployee() {
		// TODO Auto-generated method stub
		return pfDao.queryEmployee();
	}

	@Override
	public int getInsertEmployee(YpgEmployee ee) {
		// TODO Auto-generated method stub
		return pfDao.insertEmployee(ee);
	}*/

	
	@Override
	public int insertInvestor(ypgPersonalForm pf,String username) {
		int userID=dao.quertuserid(username);
		pf.setUserID(userID);
		pfDao.insertInvestor(pf);
		return userID;
	}


}
