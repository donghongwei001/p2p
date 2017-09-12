package com.web;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.entity.DhwEmpTab;
import com.entity.YxExamine;
import com.entity.YxFabu;
import com.entity.YxFinaltable;
import com.entity.YxFirsttable;
import com.service.YxFirsttableService;

@Controller
@RequestMapping("/first")
public class YxFirsttableController {
	@Autowired
	private YxFirsttableService firservice;
	/**
	 * 第一次项目审核结果插入到数据库
	 * @param json
	 * @param response
	 * @throws ParseException
	 */
	@RequestMapping(value="/shenhe")
	public void sert(@RequestBody String json,HttpServletResponse response,HttpServletRequest request) throws ParseException{
		System.out.println("11111111111111111");
		YxFirsttable yft=JSON.parseObject(json,YxFirsttable.class);
		System.out.println(yft.getProjectid());
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String date=simpleDateFormat.format(new Date());
		System.out.println(date);
	//	Date dd=simpleDateFormat.parse(date);
	//	System.out.println(dd);
		
		yft.setFirstdate(date);
		DhwEmpTab usera=(DhwEmpTab)request.getSession().getAttribute("user");
		System.out.println(usera.getEmpname());
		yft.setFirstname(usera.getEmpname());
		
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
	
	/**
	 * 第二次审核结果插入到数据库
	 * @param json
	 * @param response
	 */
	@RequestMapping(value="/director")
	public void add(@RequestBody String json,HttpServletResponse response,HttpServletRequest request){
		YxFinaltable yt=JSON.parseObject(json,YxFinaltable.class);
		SimpleDateFormat simp=new SimpleDateFormat("yyyy-MM-dd");
		String date=simp.format(new Date());
		yt.setFinaldate(date);
		DhwEmpTab use=(DhwEmpTab) request.getSession().getAttribute("user");
		yt.setFinalname(use.getEmpname());
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
	/**
	 * 更新项目申请表的状态
	 * @param json
	 * @return
	 */
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
	/**
	 * 二次审核成功后，更新二次审核状态
	 * @param json
	 * @return
	 */
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
	
	/**
	 * 插入到发布表
	 * @param json
	 * @return
	 */
	@RequestMapping(value="/addfa")
	@ResponseBody
	public String addfafa(@RequestBody String json){
		YxFabu yf=JSON.parseObject(json,YxFabu.class);
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String date=simpleDateFormat.format(new Date());
		System.out.println(date);
		yf.setBegintime(date);
		yf.setNowmoney(0);
		yf.setContent("测试用的");
		yf.setPicture("图");
		yf.setStatus(5);
		yf.setMinmoney(100);
		int id=yf.getProjectid();
		firservice.updatefina(id);
		System.out.println(id+"id");
		int flag=firservice.addfa(yf);
		if(flag>0){
			return "oo";
		}else{
			return "nn";
		}
	
	}
	/**
	 * 发布项目成功后，更新项目状态
	 * @param json
	 * @return
	 */
	@RequestMapping(value="/updatefstatus")
	@ResponseBody
	public String updatefin(@RequestBody String json){
		YxFinaltable yf=JSON.parseObject(json,YxFinaltable.class);
		return null;
		
	}
 
}
