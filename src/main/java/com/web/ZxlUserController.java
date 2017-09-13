package com.web;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.entity.ZxlMyHuankuan;
import com.entity.ZxlMyPersonal;
import com.entity.ZxlMyProject;
import com.entity.ZxlMyTouzi;
import com.entity.ZxlUser;
import com.entity.ypgHuanK;
import com.service.ZxlUserService;
/**
 * 控制层
 * @author ZXL
 *
 */
	@Controller
	@RequestMapping("/user")
	public class ZxlUserController {
	@Autowired
	private ZxlUserService userservice;
	/**
	 * 查询用表的所有数据
	 * @param request
	 * @return
	 */
	@RequestMapping("/list")
	public void list(HttpServletRequest request){
		List<ZxlUser> list=userservice.list();
		request.setAttribute("user", list);
	}
	/**
	 * 用户的添加
	 * 注册
	 * @ResponseBody 将处理结果返回到前台
	 * @param str
	 * @return
	 */
	@RequestMapping("/add")
	@ResponseBody
	public String addUser(@RequestBody String str){
		ZxlUser student=JSON.parseObject(str, ZxlUser.class);
		if(userservice.addUser(student)==0){
			return "kk";
		}
		else{
			return "no";
		}
	}
	/**
	 * 用户的登录
	 * @ResponseBody 将处理结果返回到前台
	 * @param str
	 * @return
	 */
	@RequestMapping("/login")
	@ResponseBody
	public String login(@RequestBody String str,HttpServletRequest request){ 
		System.out.println(str);
		ZxlUser zu=JSON.parseObject(str, ZxlUser.class);
		request.getSession().setAttribute("abcd",zu.getUsername());
		request.getSession().setAttribute("login", zu);
        if(userservice.find(zu)) {
        	 return "Ok";  
        } 
        else{
        	return null;
        }
    } 
	/**
	 * 该用户的项目
	 * @param request
	 * @return
	 */
	@RequestMapping("/myproject")
	public String listproject(HttpServletRequest request){
		String userna =(String)request.getSession().getAttribute("abcd");
		List<ZxlMyProject> list=userservice.listproject(userna);
		
		request.setAttribute("project", list);
		return "myproject";
	}
	/**
	 * 查询该用户所投资的项目
	 * @param request
	 * @return
	 */
	@RequestMapping("/mytouzi")
	public String listmytouzi(HttpServletRequest request){
		String userna =(String)request.getSession().getAttribute("abcd");
		List<ZxlMyTouzi> list=userservice.listmytouzi(userna);
		request.setAttribute("touzi", list);
		return "mytouzi";
	}
	
	/**
	 * 查询该用户未还款的项目
	 * @param request
	 * @return
	 */
/*  @RequestMapping("/myhuankuan")
	public String listhuankuan(HttpServletRequest request){
		String userna =(String)request.getSession().getAttribute("abcd");
		List<ZxlMyHuankuan> list=userservice.listhuankuan(userna);
		request.setAttribute("huankuan", list);
		return "myhuankuan";
	}*/
	
	
	/**
	 * 前台还款
	 * @param hkuan
	 * @param request
	 * @return
	 */
	/*@RequestMapping("/myhuankuan")
	public String queryHuanK(ypgHuanK hkuan,HttpServletRequest request){
		String userna =(String)request.getSession().getAttribute("abcd");
		Map<Integer, BigDecimal> mapHK=userservice.queryHuanK(hkuan);
		request.setAttribute("mapHuank", mapHK);
		return "myhuankuan";
	}*/
	@RequestMapping("/myhuankuan")
	public String queryHuanK(ypgHuanK hk,HttpServletRequest request){
		String userna =(String)request.getSession().getAttribute("abcd");
		hk.setUsername(userna);
		List<ypgHuanK> mapHK=(List<ypgHuanK>) userservice.queryHuanK(hk);
		request.setAttribute("mapHuank", mapHK);
		return "myhuankuan";
	}
	
	
	
	/**
	 * 查询该用户的基本信息
	 * 根据用户名
	 * @param request
	 * @return
	 */
	@RequestMapping("/mypersonal")
	public String listmypersonal(HttpServletRequest request){
		String userna =(String)request.getSession().getAttribute("abcd");
		List<ZxlMyPersonal> list=userservice.listmypersonal(userna);
		request.setAttribute("mypersonal", list);
		return "mypersonal";		
	}
	/**
	 * 修改密码
	 * 确认旧密码
	 * 插入新密码
	 * @param pwd
	 * @param request
	 * @return
	 */
	@RequestMapping("/updatepwd")
	public String updatepwd(@RequestBody String str,ZxlUser pwd,HttpServletRequest request){
		String userna =(String)request.getSession().getAttribute("abcd");	
		List<ZxlUser> listz= userservice.updatepwd(userna);		
		request.setAttribute("updatepwd", listz);
		return "myupdatepwd";		


	}
	/**
	 * 查询发布项目
	 * @param request
	 * @return
	 */
	@RequestMapping("/listpro")
	public String listpro(HttpServletRequest request){	
		List<ZxlMyProject> list=userservice.listpro();
		request.setAttribute("listpro", list);
		return "index";	
	}
	/**
	 * 根据用户名查询用户余额
	 * session接受用户名
	 * @param user
	 * @param request
	 * @return
	 */
	@RequestMapping("/personal")
	public String listmoney(HttpServletRequest request){
		String userna =(String)request.getSession().getAttribute("abcd");	
		List<ZxlUser> listz= userservice.listmoney(userna);		
		request.setAttribute("listmoney", listz);	
		return "personal";	
	}
}
