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
	 * ��ѯ����Ա��
	 * ���з�ҳ��ѯ
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
	 * ��ѯ���еĽ�ɫ
	 */
	@RequestMapping("/role")
	@ResponseBody
	public List<Map> selrole(){
		List<Map> list=dhwroleservice.selectrole();
		return list;
		
	}
	/*
	 * ��ѯĳ��Ա����ӵ�еĽ�ɫ
	 */
	@RequestMapping("/fanrole")
	@ResponseBody
	public List<Map> selemprole(int id){
		List<Map> list=dhwempservice.selemprole(id);
		return list;
		
	}
	/*
	 * ǰ̨����Ա��id
	 * ����Ա����ɫ
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
	 * ����ǰ̨������Ա��id
	 * ģ����ѯ���е�Ա��
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
