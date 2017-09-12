package com.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.YpgRoleService;

@Controller
@RequestMapping(value="/aaaaaa")
public class YpgRoleController {
	@Autowired
	private YpgRoleService roleservice;
	
	@RequestMapping(value="/queryRole")
	public void getQueryRole(HttpServletRequest request){
		List<Map> roleList=roleservice.getQueryRole();
		request.setAttribute("roleList", roleList);
	}
	
	@RequestMapping("/pers")
	public String queryPersonals(HttpServletRequest request){
		List<Map> person=roleservice.queryPersonals();
		request.setAttribute("pp", person);
		return "YpgHTpersonal";
	}
}
