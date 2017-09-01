package com.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSON;
import com.entity.ZxlUser;
import com.service.ZxlUserService;

@Controller
@RequestMapping("/user")
public class ZxlUserController {
	@Autowired
	private ZxlUserService userservice;
	@RequestMapping("/list.do")
	public String list(HttpServletRequest request){
		List<ZxlUser> list=userservice.list();
		request.setAttribute("user", list);
		return "Home";
	}
	@RequestMapping("/add.do")
	public void addUser(@RequestBody String str,HttpServletResponse response){
		ZxlUser student=JSON.parseObject(str, ZxlUser.class);
		userservice.addUser(student);
		try {
			response.getWriter().write("add");
			response.getWriter().flush();
			response.getWriter().close();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
