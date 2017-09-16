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
	@Override
	public List<SzhMoney> queryMoneyName(String name) {
		// TODO Auto-generated method stub
		return smd.queryMoneyName(name);
	}
	@Override
	public List<SzhMoney> queryMoneyProject(String moneyProject) {
		// TODO Auto-generated method stub
		return smd.queryMoneyProject(moneyProject);
	}
	@Override
	public List<SzhMoney> queryMoneyTime(String ti, String me) {
		// TODO Auto-generated method stub
		return smd.queryMoneyTime(ti, me);
	}

}
