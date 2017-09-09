package com.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.SzhMoneyDao;
import com.entity.SzhMoney;
import com.service.SzhMoneyService;

@Service
public class SzhMoneyServiceImpl implements SzhMoneyService {
	@Autowired
	SzhMoneyDao smd;
	@Override
	public List<SzhMoney> queryMoney() {
		// TODO Auto-generated method stub
		return smd.queryMoney();
	}

}
