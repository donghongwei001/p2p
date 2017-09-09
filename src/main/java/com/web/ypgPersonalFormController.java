package com.web;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.YpgEmployee;
import com.entity.ZxlUser;
import com.entity.ypgPersonalForm;
import com.service.ypgPersonalFormService;

@Controller
@RequestMapping("/person")
public class ypgPersonalFormController {
	@Autowired
	private ypgPersonalFormService pfService;
	
	@RequestMapping("/ypgPerson")
	public String getQueryPersonalForm(HttpServletRequest request,HttpSession session){
		ZxlUser user=new ZxlUser(); //暂时没有值
		List<Map> list=pfService.getQueryPersonalForm(user.getUserID());
		request.setAttribute("personal", list);
		return "ypgPersonal";
	}
	@RequestMapping("/ypgPP")
	public String QueryPersonalForm(HttpServletRequest request){
		ZxlUser user=new ZxlUser(); //暂时没有值
		List<Map> list=pfService.getQueryPersonalForm(user.getUserID());
		request.setAttribute("person", list);
		return "YpgUpdate";
	}
	
	
	@RequestMapping("/nal")
	public void insertPersonalForm(ypgPersonalForm pff,HttpSession session){
		System.out.println(pff);
		int userID =1;
		pff.setUserID(userID);
		pfService.getPersonalForm(pff);
		
	}
	
	@RequestMapping("/update")
	public String  updatePersonalForm(ypgPersonalForm pff){
		pfService.UpdatePersonalForm(pff);
		return "YpgUpdate";
	}
	
	@RequestMapping("/ypgEmployee")
	public String getQueryEmployee(HttpServletRequest request){
		List<Map> list=pfService.getQueryEmployee();
		request.setAttribute("Employee", list);
		return "ypgEmployee";
	}
	
	
	
	@RequestMapping("/insertEmployee")
	@ResponseBody
	public int getinsertEmployee(YpgEmployee emp){
		
		//System.out.println(ee);
		int flag = pfService.getInsertEmployee(emp);
		System.out.println("sdljglsjljgldjldfglsfgl   " + flag);
		return flag;
	}
}
