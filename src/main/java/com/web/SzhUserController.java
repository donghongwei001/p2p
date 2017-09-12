package com.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.entity.SzhRole;
import com.entity.SzhUser;
import com.service.SzhUserService;

@Controller
public class SzhUserController {
	@Autowired
	SzhUserService sus;
	@RequestMapping(value="/queryUser")
	public void query(HttpServletResponse response){
		List su = sus.queryUser();
		try {
			response.setContentType("text/json");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(JSON.toJSONString(su));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}
	
	@RequestMapping(value="/addUser")
	@ResponseBody  
	public int add(/*@RequestBody String json,HttpServletResponse response*/SzhUser su){
		/*SzhUser su=JSON.parseObject(json,SzhUser.class);*/
		int flag=sus.addUser(su);
		/*try{
			if(flag==1){
				response.getWriter().write("添加用户成功！");
			}else{
				response.getWriter().write("添加用户失败！");
			}		
			response.getWriter().flush();
			response.getWriter().close();
		}catch(Exception e){
			
		}*/
		System.out.println(flag);
		return flag;
	}
	
	@RequestMapping(value="/updateUser")
	@ResponseBody
	public int update(SzhUser suu){
		int flag=sus.updateUser(suu);
		return flag;
	}
}
