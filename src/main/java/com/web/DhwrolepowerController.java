package com.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.entity.Page;
import com.entity.Pageresult;
import com.entity.Power;
import com.service.Dhwrolepowerservice;

import oracle.net.aso.p;

@Controller
@RequestMapping("/aaa")
public class DhwrolepowerController {
	@Autowired
	private Dhwrolepowerservice dhwrolepowerservice;
	@RequestMapping("/querypower")
	@ResponseBody
	public Pageresult querypower( Integer page,Integer rows){
		int page1=page;
		int rows1=rows;
		List<Map> list=dhwrolepowerservice.queryPower();
		Page<Map> paging=new Page<Map>();
		List<Map> list1=paging.paging(list,rows1,page1);
		System.out.println(list1.size());
		Pageresult<Map> pResult=new Pageresult<Map>();
		
		pResult.setTotal(list.size());
		pResult.setRows(list1);
		return pResult;	
	}
	@RequestMapping("/queryid")
	@ResponseBody
	public List<Map> queryid(){
		List<Map> list=dhwrolepowerservice.querypid();
		System.out.println("1111111");
		System.out.println(list.size());
		return list;
		
	}
	@RequestMapping("/addpower")
	@ResponseBody
	public int addpower(@RequestBody String str){
		System.out.println(str);
		Power power=JSON.parseObject(str, Power.class);
		System.out.println(power);
		int flag=0;
		try {
			flag=dhwrolepowerservice.addpower(power);
			System.out.println(dhwrolepowerservice.addpower(power));
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		
		
		System.out.println(flag+"************");
		return flag;
	}
	@RequestMapping("/deletepower")
	@ResponseBody
	public void deletepower(String id){
		dhwrolepowerservice.deletepower(id);
	}
	
	@RequestMapping("/selonepower")
	@ResponseBody
	public List<Map> selonepower(String id){
		List<Map> list=dhwrolepowerservice.selonepower(id);
		return list;
		
	}
	@RequestMapping("/updatepower")
	@ResponseBody
	public void updatepower(@RequestBody String str){
		
		Power power=JSON.parseObject(str, Power.class);
		System.out.println(power);
		dhwrolepowerservice.updatepower(power);
		System.out.println("1111111111");
	}
	
	@RequestMapping("/selpower")
	@ResponseBody
	public Pageresult selpower(Integer page,Integer rows,String id){
		int page1=page;
		int rows1=rows;
		String ids="%"+id+"%";
		List<Map> list=dhwrolepowerservice.selpower(ids);
		Page<Map> paging=new Page<Map>();
		List<Map> list1=paging.paging(list,rows1,page1);
		System.out.println(list1.size());
		Pageresult<Map> pResult=new Pageresult<Map>();
		
		pResult.setTotal(list.size());
		pResult.setRows(list1);
		return pResult;
	}
}
