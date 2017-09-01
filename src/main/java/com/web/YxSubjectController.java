package com.web;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSON;
import com.entity.YxSubjecttype;
import com.service.YxSubjectService;

@Controller
@RequestMapping("/add")
public class YxSubjectController {
	@Autowired
	private YxSubjectService subservice;
	
	@RequestMapping(value="/type")
	public void add(@RequestBody String json,HttpServletResponse response){
		YxSubjecttype yy=JSON.parseObject(json,YxSubjecttype.class);
		int flag=subservice.addsubjecttype(yy);
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
