package com.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.entity.SzhRole;
import com.service.SzhRoleService;

@Controller
public class SzhRoleController {
	@Autowired
	SzhRoleService srs;
	@RequestMapping(value="/queryRole")
	public void queryRole(HttpServletResponse response){
		List sr = srs.queryRole();
		try {
			response.setContentType("text/json");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(JSON.toJSONString(sr));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 	
	}
	@RequestMapping(value="/addRole")
	@ResponseBody
	public int add(SzhRole sr){
		int flag=srs.addRole(sr);
		return flag;
	}
	@RequestMapping(value="/updateRole")
	@ResponseBody
	public int update(SzhRole srr){
		int flag=srs.updateRole(srr);
		return flag;
	}
}
