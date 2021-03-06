package com.web;



import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Page;
import com.entity.Pageresult;
import com.service.dhwprojectService;

@Controller
@RequestMapping("/dhw")
public class dhwsubjectController {
	
	@Autowired
	private dhwprojectService dhwprojectService;
	@RequestMapping("/selpro")
	public @ResponseBody Pageresult selectproject(HttpServletRequest request){
		int page=Integer.parseInt(request.getParameter("page"));
		System.out.println("page"+page);
		int rows=Integer.parseInt(request.getParameter("rows"));
		System.out.println("rows"+rows);
		List<Map> list=dhwprojectService.selectproject();
		
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		for (int i = 0; i < list.size(); i++) {
			String time=simpleDateFormat.format(list.get(i).get("TIME"));
			list.get(i).put("time1", time);
			
		}
		Page<Map> paging=new Page<Map>();
		List<Map> list1=paging.paging(list,rows,page);
		System.out.println(list1.size());
		Pageresult<Map> pResult=new Pageresult<Map>();
		
		pResult.setTotal(list.size());
		pResult.setRows(list1);
		
		return pResult;
		
	}
	@RequestMapping("/cha")
	public @ResponseBody Pageresult queryproject(HttpServletRequest request) throws ParseException{
		String name=request.getParameter("projectname");
		String shijian1=request.getParameter("shijian1");
		
		String shijian2=request.getParameter("shijian2");
		int page=Integer.parseInt(request.getParameter("page"));
		System.out.println("page"+page);
		int rows=Integer.parseInt(request.getParameter("rows"));
		System.out.println("rows"+rows);
		if (!name.equals("")&&shijian1.equals("")&&shijian2.equals("")) {
			String rname="%"+name+"%";
			System.out.println(rname);
			List<Map> list= dhwprojectService.queryprojectone(rname);
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
			for (int i = 0; i < list.size(); i++) {
				String time=simpleDateFormat.format(list.get(i).get("TIME"));
				list.get(i).put("time1", time);
				
			}
			Page<Map> paging=new Page<Map>();
			List<Map> list1=paging.paging(list,rows,page);
			System.out.println(list1.size());
			Pageresult<Map> pResult=new Pageresult<Map>();
			
			pResult.setTotal(list.size());
			pResult.setRows(list1);
			return pResult;
		}
		if (name.equals("")&&!shijian1.equals("")&&!shijian2.equals("")) {
			System.out.println(shijian1+shijian2);
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
			Date date1=simpleDateFormat.parse(shijian1);
			Date date2=simpleDateFormat.parse(shijian2);
			
			List<Map> list=dhwprojectService.queryprojecttwo(date1, date2);
			
			for (int i = 0; i < list.size(); i++) {
				String time=simpleDateFormat.format(list.get(i).get("TIME"));
				list.get(i).put("time1", time);
				
			}
			Page<Map> paging=new Page<Map>();
			List<Map> list1=paging.paging(list,rows,page);
			System.out.println(list1.size());
			Pageresult<Map> pResult=new Pageresult<Map>();
			
			pResult.setTotal(list.size());
			pResult.setRows(list1);
			return pResult;
		}
		if (!name.equals("")&&!shijian1.equals("")&&!shijian2.equals("")) {
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
			Date date1=simpleDateFormat.parse(shijian1);
			Date date2=simpleDateFormat.parse(shijian2);
			String rname="%"+name+"%";
			List<Map> list=dhwprojectService.queryall(date1, date2, rname);
			for (int i = 0; i < list.size(); i++) {
				String time=simpleDateFormat.format(list.get(i).get("TIME"));
				list.get(i).put("time1", time);
				
			}
			Page<Map> paging=new Page<Map>();
			List<Map> list1=paging.paging(list,rows,page);
			System.out.println(list1.size());
			Pageresult<Map> pResult=new Pageresult<Map>();
			
			pResult.setTotal(list.size());
			pResult.setRows(list1);
			return pResult;
		}
		return null;
		
	}
	//查看项目详情
	@RequestMapping("/xiang")
	public @ResponseBody List<Map> selxiangqing(HttpServletRequest request){
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		int  id=Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		List<Map> list=dhwprojectService.selxiangqing(id);
		for (int i = 0; i < list.size(); i++) {
			String time=simpleDateFormat.format(list.get(i).get("TIME"));
			list.get(i).put("time1", time);
			
		}
		return list;
		
	}
}
