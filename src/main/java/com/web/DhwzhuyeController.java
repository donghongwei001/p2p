package com.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Page;
import com.entity.Pageresult;
import com.service.DhwzhuyeService;

@Controller
@RequestMapping("/dyt")
public class DhwzhuyeController {

	@Autowired
	private DhwzhuyeService dhwzhuyeService;
	@RequestMapping("/sel")
	public @ResponseBody List<Map> seldome(Model model){
		List<Map> list=dhwzhuyeService.selectdemo();
		return list;
	}
	@RequestMapping("/zong")
	public @ResponseBody List<Map> sel(){
		int id1=dhwzhuyeService.selday();
		int id2=dhwzhuyeService.selbody();
		List<Map> list=new ArrayList<Map>();
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("id1", id1);
		map.put("id2", id2);
		list.add(map);
		
		return list;
		
	}
	@RequestMapping("/demo")
	public void sll(HttpServletRequest request){
		System.out.println(request.getParameter("id"));
		System.out.println("11111");
	}
	@RequestMapping("/selfabu")
	@ResponseBody
	public  List<Map> selfabu(HttpServletRequest request){
		/*int page=Integer.parseInt(request.getParameter("page"));
		System.out.println("page"+page);
		int rows=Integer.parseInt(request.getParameter("rows"));
		System.out.println("rows"+rows);*/
		List<Map> list=dhwzhuyeService.selfabu();
		/*System.out.println(list.size());
		Page<Map> paging=new Page<Map>();
		List<Map> list1=paging.paging(list,rows,page);
		System.out.println(list1.size());
		Pageresult<Map> pResult=new Pageresult<Map>();
		
		pResult.setTotal(list.size());
		pResult.setRows(list1);*/
		return list;
		
	}
} 
