package com.web;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSON;
import com.entity.YxFinaltable;
import com.entity.YxFirsttable;
import com.service.YxFirsttableService;

@Controller
@RequestMapping("/first")
public class YxFirsttableController {
	@Autowired
	private YxFirsttableService firservice;
	//第一次项目审核结果
	@RequestMapping(value="/shenhe")
	public void sert(@RequestBody String json,HttpServletResponse response) throws ParseException{
		System.out.println("11111111111111111");
		YxFirsttable yft=JSON.parseObject(json,YxFirsttable.class);
		
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String date=simpleDateFormat.format(new Date());
		System.out.println(date);
	//	Date dd=simpleDateFormat.parse(date);
	//	System.out.println(dd);
		
		yft.setFirstdate(date);
		System.out.println(yft);
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
	
	//第二次审核结果
	@RequestMapping(value="/director")
	public void add(@RequestBody String json,HttpServletResponse response){
		YxFinaltable yt=JSON.parseObject(json,YxFinaltable.class);
		SimpleDateFormat simp=new SimpleDateFormat("yyyy-MM-dd");
		String date=simp.format(new Date());
		yt.setFinaldate(date);
		int flag=firservice.addseconds(yt);
		try{
			if(flag==1){
				response.getWriter().write("right");
			}else{
				response.getWriter().write("left");
			}
			response.getWriter().flush();
			response.getWriter().close();
		}catch(Exception e){
			
		}
	}
	
	//@RequestMapping(value="/updatestatus")
	

}
