package com.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.SzhMoney;
import com.service.SzhMoneyService;

@Controller
public class SzhMoneyController {
	@Autowired
	private SzhMoneyService sms;
	@RequestMapping(value="/queryMoney")
	@ResponseBody
	public List<SzhMoney> query(){
		List<SzhMoney> sm=sms.queryMoney();
		return sm;
	}
	@RequestMapping(value="/queryMoneyName")
	@ResponseBody
	public List<SzhMoney> queryMoneyName(String name){
		List<SzhMoney> smm = sms.queryMoneyName(name);
		return smm;
	}
	@RequestMapping(value="/queryMoneyProject")
	@ResponseBody
	public List<SzhMoney> queryMoneyProject(String moneyProject){
		List<SzhMoney> smmm = sms.queryMoneyProject(moneyProject);
		return smmm;
	}
	@RequestMapping(value="/queryMoneyTime")
	@ResponseBody
	public List<SzhMoney> queryMoneyTime(String ti,String me){
		List<SzhMoney> smmmm = sms.queryMoneyTime(ti, me);
		return smmmm;
	}
}
