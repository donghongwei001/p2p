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
		@SuppressWarnings("unchecked")
		List<SzhMoney> sm=sms.queryMoney();
		return sm;
	}
}
