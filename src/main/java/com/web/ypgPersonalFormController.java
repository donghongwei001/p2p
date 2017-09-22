package com.web;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.entity.ypgPersonalForm;
import com.service.ypgPersonalFormService;

@Controller
@RequestMapping("/ypgPerson")
public class ypgPersonalFormController {
	@Autowired
	private ypgPersonalFormService pfService;
	
	/**
	 * 插入个人信息到数据库
	 * @param pff
	 * @param request
	 * @return
	 */
	@RequestMapping("/ypgNal")
	public String insertPersonalForm(ypgPersonalForm pff,HttpServletRequest request){
		String userna =(String)request.getSession().getAttribute("abcd");
		String address=request.getParameter("location1")+request.getParameter("location2")+request.getParameter("location3");
		pff.setAddress(address);
		pfService.getPersonalForm(pff, userna);
		pfService.insertInvestor(pff, userna);
		return "xiangmushenqing";
	}
	
}
