package com.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.ypgPersonalForm;
import com.service.YpgRepaymentService;

@Controller
@RequestMapping("/repay")
public class YpgRepaymentController {
	@Autowired
	private YpgRepaymentService reService;
	
	@RequestMapping("/repayment")
	public String queryRepayment(HttpServletRequest request){
		List<Map> repaymentList=reService.queryRepayment();
		request.setAttribute("repayment", repaymentList);
		return "YpgRepayment";
	}
	
	@RequestMapping("/publish")
	public String queryPublish(HttpServletRequest request){
		List<Map> publishList=reService.queryPublish();
		request.setAttribute("publl", publishList);
		
		List<Map> publish=reService.queryMinute();
		request.setAttribute("min", publish);
		
		return "YpgPublish";
	}
	
}
