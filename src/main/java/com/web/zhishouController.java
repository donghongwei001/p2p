package com.web;

import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Page;
import com.entity.Pageresult;
import com.service.zhishouservice;

@Controller
@RequestMapping("/total")
public class zhishouController {

	@Autowired
	private zhishouservice zhishouservices;
	@RequestMapping("/money")
	@ResponseBody
	public int querytotalmoney(){
		int index=zhishouservices.querytotalmoney();
		return index;
		
	}
	@RequestMapping("/shouzhi")
	@ResponseBody
	public Pageresult selshouzhi(Integer page,Integer rows){
		List<Map> list=zhishouservices.selshouzhi();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		for (int i = 0; i < list.size(); i++) {
			String time=simpleDateFormat.format(list.get(i).get("TIME"));
			list.get(i).put("time1", time);
			
		}
		int page1=page;
		int rows1=rows;
		Page<Map> paging=new Page<Map>();
		List<Map> list1=paging.paging(list,rows1,page1);
		System.out.println(list1.size());
		Pageresult<Map> pResult=new Pageresult<Map>();
		
		pResult.setTotal(list.size());
		pResult.setRows(list1);
		return pResult;
		
	}
}
