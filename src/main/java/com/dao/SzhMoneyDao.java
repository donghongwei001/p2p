package com.dao;

import java.util.List;

import com.entity.SzhMoney;

public interface SzhMoneyDao {
	public List<SzhMoney> queryMoney();
	public List<SzhMoney> queryMoneyName(String name);
	public List<SzhMoney> queryMoneyProject(String moneyProject);
	public List<SzhMoney> queryMoneyTime(String ti,String me);
}
