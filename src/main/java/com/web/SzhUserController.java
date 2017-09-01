package com.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSON;
import com.entity.SzhUser;
import com.service.SzhUserService;

@Controller
public class SzhUserController {
	@Autowired
	SzhUserService sus;
	@RequestMapping(value="/queryUser")
	public String query(HttpServletRequest request){
		List<SzhUser> su = sus.queryUser();
		request.setAttribute("su",su);
		return "SzhQxjm";
	}
	
	@RequestMapping(value="/addUser")
	public void add(@RequestBody String json,HttpServletResponse response){
		SzhUser su=JSON.parseObject(json,SzhUser.class);
		int flag=sus.addUser(su);
		try{
			if(flag==1){
				response.getWriter().write("添加用户成功！");
			}else{
				response.getWriter().write("添加用户失败！");
			}		
			response.getWriter().flush();
			response.getWriter().close();
		}catch(Exception e){
			
		}
	}
}
