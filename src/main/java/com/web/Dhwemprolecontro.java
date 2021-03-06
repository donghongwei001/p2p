package com.web;

import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Emprole;
import com.entity.Page;
import com.entity.Pageresult;
import com.service.Dhwempservice;
import com.service.DhwroleService;

@Controller
@RequestMapping("/emprole")
public class Dhwemprolecontro {

	@Autowired
	private Dhwempservice dhwempservice;
	@Autowired
	private DhwroleService dhwroleservice;
	/*
	 * 查询所有员工
	 * 进行分页查询
	 */
	@RequestMapping("/emp")
	@ResponseBody
	public Pageresult queryemp(Integer page,Integer rows){
		int page1=page;
		int rows1=rows;
		List<Map> list=dhwempservice.queryemp();
		Page<Map> paging=new Page<Map>();
		List<Map> list1=paging.paging(list,rows1,page1);
		System.out.println(list1.size());
		Pageresult<Map> pResult=new Pageresult<Map>();
		
		pResult.setTotal(list.size());
		pResult.setRows(list1);
		return pResult;
	}
	/*
	 * 查询所有的角色
	 */
	@RequestMapping("/role")
	@ResponseBody
	public List<Map> selrole(){
		List<Map> list=dhwroleservice.selectrole();
		return list;
		
	}
	/*
	 * 查询某个员工所拥有的角色
	 */
	@RequestMapping("/fanrole")
	@ResponseBody
	public List<Map> selemprole(int id){
		List<Map> list=dhwempservice.selemprole(id);
		return list;
		
	}
	/*
	 * 前台穿来员工id
	 * 更改员工角色
	 */
	@RequestMapping("/updarole")
	@ResponseBody
	public void updaterole(Emprole emprole){
		System.out.println(emprole.getRoleid());
		String[] chrstr=emprole.getRoleid().split(",");
		dhwempservice.deleteemprole(emprole.getEmpid());
		for (int i = 0; i < chrstr.length; i++) {
			dhwempservice.addemprole(emprole.getEmpid(), chrstr[i]);
		}
	}
	/*
	 * 根据前台穿来的员工id
	 * 模糊查询所有的员工
	 */
	@RequestMapping("/sel")
	@ResponseBody
	public Pageresult queryrole(Integer page,Integer rows,String id){
		int page1=page;
		int rows1=rows;
		String ids="%"+id+"%";
		List<Map> list=dhwempservice.selemp(ids);
		Page<Map> paging=new Page<Map>();
		List<Map> list1=paging.paging(list,rows1,page1);
		System.out.println(list1.size());
		Pageresult<Map> pResult=new Pageresult<Map>();
		
		pResult.setTotal(list.size());
		pResult.setRows(list1);
		return pResult;
	} 
}
