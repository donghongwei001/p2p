package com.web;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.service.dhwprojectService;

@Controller
@RequestMapping("/dhw")
public class dhwsubjectController {
	
	@Autowired
	private dhwprojectService dhwprojectService;
	@RequestMapping("/selpro")
	public @ResponseBody List<Map> selectproject(){
		List<Map> list=dhwprojectService.selectproject();
		return list;
		
	}
	@RequestMapping("/cha")
	public @ResponseBody List<Map> queryproject(HttpServletRequest request){
		String name=request.getParameter("projectname");
		String shijian1=request.getParameter("shijian1");
		
		String shijian2=request.getParameter("shijian2");
		String rname="%"+name+"%";
		if (!name.equals("")&&shijian1.equals("")&&shijian2.equals("")) {
			System.out.println(rname);
			List<Map> list= dhwprojectService.queryprojectone(rname);
			return list;
		}
		if (name.equals("")&&!shijian1.equals("")&&!shijian2.equals("")) {
			System.out.println(shijian1+shijian2);
			List<Map> list=dhwprojectService.queryprojecttwo(shijian1, shijian2);
			return list;
		}
		return null;
		
	}
}
