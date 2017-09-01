package com.web;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
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
	@RequestMapping("/ypgPerson")
	public String getQueryPersonalForm(HttpServletRequest request){
		List<Map> list=pfService.getQueryPersonalForm();
		request.setAttribute("personal", list);
		return "ypgPersonal";
	}
	@RequestMapping("/nal")
	public void insertPersonalForm(ypgPersonalForm pff,HttpSession session){
		System.out.println(pff);
		int userID =1;
		pff.setUserID(userID);
		pfService.getPersonalForm(pff);
	}
}
