package com.web;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.ypgPersonalForm;
import com.service.ypgPersonalFormService;

@Controller
@RequestMapping("/person")
public class ypgPersonalFormController {
	@Autowired
	private ypgPersonalFormService pfService;
	
	@RequestMapping("/nal")
	public void insertPersonalForm(ypgPersonalForm pff,HttpSession session){
		System.out.println(pff);
		int userID =1;
		pff.setUserID(userID);
		pfService.getPersonalForm(pff);
	}
}
