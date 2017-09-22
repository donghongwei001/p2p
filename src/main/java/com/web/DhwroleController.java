package com.web;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.entity.Page;
import com.entity.Pageresult;
import com.entity.Power;
import com.entity.Role;
import com.service.DhwroleService;
import com.service.Dhwrolepowerservice;

@Controller
@RequestMapping("/role")
public class DhwroleController {
	@Autowired
	private DhwroleService dhwroleService;
	@Autowired
	private Dhwrolepowerservice dhwrolepowerservice;
	/*
	 * 查询所有角色
	 * 实行分页
	 */
	@RequestMapping("/selrole")
	@ResponseBody
	public Pageresult selectrole(Integer page,Integer rows){
		int page1=page;
		int rows1=rows;
		List<Map> list=dhwroleService.selectrole();
		Page<Map> paging=new Page<Map>();
		List<Map> list1=paging.paging(list,rows1,page1);
		Pageresult<Map> pResult=new Pageresult<Map>();
		
		pResult.setTotal(list.size());
		pResult.setRows(list1);
		return pResult;
	}
	/*
	 * 查询某个角色
	 * 模糊查询
	 * 实行分页
	 */
	@RequestMapping("/queryrole")
	@ResponseBody
	public Pageresult queryrole(Integer page,Integer rows,String id){
		int page1=page;
		int rows1=rows;
		String ids="%"+id+"%";
		List<Map> list=dhwroleService.queryrole(ids);
		Page<Map> paging=new Page<Map>();
		List<Map> list1=paging.paging(list,rows1,page1);
		System.out.println(list1.size());
		Pageresult<Map> pResult=new Pageresult<Map>();
		
		pResult.setTotal(list.size());
		pResult.setRows(list1);
		return pResult;
	} 
	/*
	 * 搜索出所有的权限
	 * 到前台显示为权限树
	 */
	@RequestMapping("/listpower")
	@ResponseBody
	public List<Map> listpower(String id){
		if (id==null||id==""||id=="0") {
			id="0";
			List<Map> list=dhwroleService.selectpower(id);
			for(int i=0;i<list.size();i++){
				list.get(i).put("id",list.get(i).get("ID"));
				list.get(i).put("text",list.get(i).get("NAME"));
				list.get(i).put("attributes",list.get(i).get("PAGE"));
				String sid=list.get(i).get("ID").toString();
				List<Map> num=dhwroleService.selectson(sid);
				if(num.size()!=0){
					list.get(i).put("state","closed");
				}  		
			}
			return list;
		}else{
			List<Map> list=dhwroleService.selectpower(id);			
			for(int i=0;i<list.size();i++){
				list.get(i).put("id",list.get(i).get("ID"));
				list.get(i).put("text",list.get(i).get("NAME"));
				list.get(i).put("attributes",list.get(i).get("PAGE"));
				String sid=list.get(i).get("ID").toString();
				List<Map> num=dhwroleService.selectson(sid);
				if(num.size()!=0){
					list.get(i).put("state","closed");
				} 
			}
			return list;
		}
		
	}
	/*
	 * 增加一个角色
	 * 为这个角色赋予权限
	 */
	@RequestMapping("/addrole")
	@ResponseBody
	public void addrole(Role role){
		
		System.out.println("***************");
		int id=dhwroleService.addrole(role);
		List<Map> list=dhwroleService.queryrole(role.getRolename());
		
		String[] chrstr=role.getPower().split(",");
		if (!chrstr[0].equals("")) {
			for (int i = 0; i < chrstr.length; i++) {
				dhwroleService.addrolepower(list.get(0).get("ROLEID").toString(), chrstr[i]);
			}
		}
	}
	/*
	 * 
	 */
	@RequestMapping("/fanhuirole")
	@ResponseBody
	public List<Map> fanhuirole(String id){
		List<Map> list1=dhwroleService.queryrole(id);
		return list1;
		
	}
	/*
	 * 查询出这个角色拥有的所有权限
	 * 列出权限树
	 * 拥有权限的被勾选
	 */
	@RequestMapping("/selrolepower")
	@ResponseBody
	public List<Map> selrolepower(String id,String roleid){
		System.out.println(roleid);
		if (id==null||id==""||id=="0") {
			id="0";
			List<Map> list=dhwroleService.selectpower(id);
			System.out.println(list.size());
			for(int i=0;i<list.size();i++){
				list.get(i).put("id",list.get(i).get("ID"));
				list.get(i).put("roleId", roleid);
				list.get(i).put("text",list.get(i).get("NAME"));
				if (list.get(i).get("PAGE")==null) {
					list.get(i).put("attributes","{url:'"+"'}");
				}else {
					list.get(i).put("attributes","{url:'"+list.get(i).get("PAGE").toString()+"'}");
				}
				
				List<Map> list2=dhwroleService.selonerolepower(roleid, list.get(i).get("ID").toString());
				if (list2.size()!=0) {
					list.get(i).put("checked","true");
				}
				String sid=list.get(i).get("ID").toString();
				List<Map> num=dhwroleService.selectson(sid);
				if(num.size()!=0){
					list.get(i).put("state","closed");
				}  		
			}
			return list;
		}else{
			List<Map> list=dhwroleService.selectpower(id);			
			for(int i=0;i<list.size();i++){
				list.get(i).put("id",list.get(i).get("ID"));
				list.get(i).put("roleId", roleid);
				list.get(i).put("text",list.get(i).get("NAME"));
				if (list.get(i).get("PAGE")==null) {
					list.get(i).put("attributes","{url:'"+"'}");
				}else {
					list.get(i).put("attributes","{url:'"+list.get(i).get("PAGE").toString()+"'}");
				}
				List<Map> list2=dhwroleService.selonerolepower(roleid, list.get(i).get("ID").toString());
				if (list2.size()!=0) {
					list.get(i).put("checked","true");
				}
				String sid=list.get(i).get("ID").toString();
				List<Map> num=dhwroleService.selectson(sid);
				if(num.size()!=0){
					list.get(i).put("state","closed");
				} 
				
			}
			return list;
		
		}
	}
	/*
	 * 更改角色
	 */
	@RequestMapping("/updaterole")
	@ResponseBody
	public void updaterole(Role role){
		dhwroleService.updaterole(role);
		String id=Integer.toString(role.getRoleid());
		dhwroleService.deleterole(id);
		String[] chrstr=role.getPower().split(",");
		if (!chrstr[0].equals("")) {
			for (int i = 0; i < chrstr.length; i++) {
				dhwroleService.addrolepower(id, chrstr[i]);
			}
		}
	}
	/*
	 * 删除角色
	 */
	@RequestMapping("/deleterole")
	@ResponseBody
	public void deleterole(String id){
		dhwroleService.deleterole(id);
		dhwroleService.deleterolepower(id);
	}
}
