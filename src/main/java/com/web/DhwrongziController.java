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
import com.service.DhwrongziService;

@Controller
@RequestMapping("/zyx")
public class DhwrongziController {
	
	@Autowired
	private DhwrongziService dhwrongziService;
	/*
	 * 查询所有的融资项目
	 */
	@RequestMapping("/all")
	public @ResponseBody Pageresult queryall(HttpServletRequest request){
		int page=Integer.parseInt(request.getParameter("page"));
		System.out.println("page"+page);
		int rows=Integer.parseInt(request.getParameter("rows"));
		System.out.println("rows"+rows);
		List<Map> list=dhwrongziService.queryall();
		Page<Map> paging=new Page<Map>();
		List<Map> list1=paging.paging(list,rows,page);
		System.out.println(list1.size());
		Pageresult<Map> pResult=new Pageresult<Map>();
		pResult.setTotal(list.size());
		pResult.setRows(list1);
		return pResult;
		
	}
	/*
	 * 根据不同情况判断搜索项目
	 * 时间和名字
	 */
	@RequestMapping("/cha")
	public @ResponseBody Pageresult queryproject(HttpServletRequest request) throws ParseException{
		int page=Integer.parseInt(request.getParameter("page"));
		System.out.println("page"+page);
		int rows=Integer.parseInt(request.getParameter("rows"));
		System.out.println("rows"+rows);
		String name=request.getParameter("projectname");
		String shijian1=request.getParameter("shijian1");
		String shijian2=request.getParameter("shijian2");
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date1=simpleDateFormat.parse(shijian1);
		Date date2=simpleDateFormat.parse(shijian2);
		List<Map> list=dhwrongziService.queryproject(date1, date2, name);
		Page<Map> paging=new Page<Map>();
		List<Map> list1=paging.paging(list,rows,page);
		System.out.println(list1.size());
		Pageresult<Map> pResult=new Pageresult<Map>();
		
		pResult.setTotal(list.size());
		pResult.setRows(list1);
		return pResult;
		
	}
	@RequestMapping("/xiang")
	public @ResponseBody List<Map> selxiangqing(HttpServletRequest request){
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		int  id=Integer.parseInt(request.getParameter("id"));
		List<Map> list=dhwrongziService.selxiangqing(id);
		return list;
		
	}
}
