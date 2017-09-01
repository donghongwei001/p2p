package com.web;

import java.util.Date;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSON;
import com.entity.YxFirsttable;
import com.service.YxFirsttableService;

@Controller
@RequestMapping("/first")
public class YxFirsttableController {
	@Autowired
	private YxFirsttableService firservice;
	
	@RequestMapping(value="/shenhe")
	public void sert(@RequestBody String json,HttpServletResponse response){
		YxFirsttable yft=JSON.parseObject(json,YxFirsttable.class);
		
		Date date=new Date();
		int flag=firservice.addfirsts(yft);
		try{
			if(flag==1){
				response.getWriter().write("success");
			}else{
				response.getWriter().write("error");
			}
			response.getWriter().flush();
			response.getWriter().close();
		}catch(Exception e){
			
		}
	}
}
