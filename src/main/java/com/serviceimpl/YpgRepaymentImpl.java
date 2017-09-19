package com.serviceimpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.YpgRepaymentDao;
import com.service.YpgRepaymentService;

@Service
public class YpgRepaymentImpl implements YpgRepaymentService{
	@Autowired
	private YpgRepaymentDao reDao;
	
	/**
	 * »¹¿î
	 */
	@Override
	public List<Map> queryRepayment() {
		// TODO Auto-generated method stub
		return reDao.queryRepayment();
	}
	
	/*@Override
	public List<Map> queryPublish() {
		// TODO Auto-generated method stub
		return reDao.queryPublish();
	}
	@Override
	public List<Map> queryMinute() {
		// TODO Auto-generated method stub
		return reDao.queryMinute();
	}*/
	
	@Override
	public List<Map> querySchedule(int id) {
		// TODO Auto-generated method stub
		return reDao.querySchedule(id);
	}

}
