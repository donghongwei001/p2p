package com.web;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.entity.YxExamine;
import com.entity.YxFinaltable;
import com.entity.YxFirst;
import com.entity.YxFirsttable;
import com.service.YxFirsttableService;

@Controller
@RequestMapping("/first")
public class YxFirsttableController {
	@Autowired
	private YxFirsttableService firservice;
	//第一次项目审核结果插入到数据库
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
	
	//第二次审核结果插入到数据库
	@RequestMapping(value="/director")
	public void add(@RequestBody String json,HttpServletResponse response){
		YxFinaltable yt=JSON.parseObject(json,YxFinaltable.class);
		SimpleDateFormat simp=new SimpleDateFormat("yyyy-MM-dd");
		String date=simp.format(new Date());
		yt.setFinaldate(date);
		yt.setPoststatus(1);
		int flag=firservice.addseconds(yt);
		try{
			if(flag==1){
				response.getWriter().write("right");
			}else{
				response.getWriter().write("wrong");
			}
			response.getWriter().flush();
			response.getWriter().close();
		}catch(Exception e){
			
		}
	}
	//更新项目申请表的状态
	@RequestMapping(value="/updatestatus")
	@ResponseBody
	public String update(@RequestBody String json){
		YxExamine ym=JSON.parseObject(json,YxExamine.class);
		int flag=firservice.update(ym);
	
			if(flag>0){
				return "ture";
			}else{
				return "false";
			}
		
	}
	//二次审核成功后，更新二次审核状态
	@RequestMapping(value="/updatefinal")
	@ResponseBody
	public String updates(@RequestBody String json){
		YxFirsttable yx=JSON.parseObject(json,YxFirsttable.class);
		int flag=firservice.updates(yx);
		if(flag>0){
			return "ok";
		}else{
			return "no";
		}
	}
 
}
