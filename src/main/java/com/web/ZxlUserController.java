package com.web;

import java.util.List;

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
import com.service.ZxlUserService;
/**
 * ï¿½ï¿½ï¿½Æ²ï¿½
 * @author ZXL
 *
 */
@Controller
@RequestMapping("/user")
public class ZxlUserController {
	@Autowired
	private ZxlUserService userservice;
	/**
	 * ï¿½ï¿½Ñ¯ï¿½Ã±ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
	 * @param request
	 * @return
	 */
	@RequestMapping("/list")
	public void list(HttpServletRequest request){
		List<ZxlUser> list=userservice.list();
		request.setAttribute("user", list);
	}
	/**
	 * ï¿½Ã»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
	 * ×¢ï¿½ï¿½
	 * @ResponseBody ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Øµï¿½Ç°Ì¨
	 * @param str
	 * @return
	 */
	@RequestMapping("/add")
	@ResponseBody
	public String addUser(@RequestBody String str){
		ZxlUser student=JSON.parseObject(str, ZxlUser.class);
		/*ÓÃ»§ÃûÖØ¸´*/
		if(userservice.addUser(student)==0){  
			return "error";
		}
		else{
			return "success";  /*¿ÉÒÔÌí¼Ó*/
		}
	}
	/**
	 * ï¿½Ã»ï¿½ï¿½Äµï¿½Â¼
	 * @ResponseBody ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Øµï¿½Ç°Ì¨
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
	 * ï¿½ï¿½ï¿½Ã»ï¿½ï¿½ï¿½ï¿½ï¿½Ä¿
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
	 * ï¿½ï¿½Ñ¯ï¿½ï¿½ï¿½Ã»ï¿½ï¿½ï¿½Í¶ï¿½Êµï¿½ï¿½ï¿½Ä¿
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
	 * ²éÑ¯¸ÃÓÃ»§Î´»¹¿îµÄÏîÄ¿
	 * @param request
	 * @return
	 */
	@RequestMapping("/myhuankuan")
	public String listhuankuan(HttpServletRequest request){
		String userna =(String)request.getSession().getAttribute("abcd");
		List<ZxlMyHuankuan> list=userservice.listhuankuan(userna);
		request.setAttribute("huankuan", list);
		return "myhuankuan";
	}
	
	/**
	 * ï¿½ï¿½Ñ¯ï¿½ï¿½ï¿½Ã»ï¿½ï¿½Ä»ï¿½ï¿½ï¿½Ï¢
	 * ï¿½ï¿½ï¿½ï¿½Ã»ï¿½ï¿½ï¿½
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
	 * ï¿½Þ¸ï¿½ï¿½ï¿½ï¿½ï¿½
	 * È·ï¿½Ï¾ï¿½ï¿½ï¿½ï¿½ï¿½
	 * ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
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
	 * ï¿½ï¿½Ñ¯ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¿
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
	 * ï¿½ï¿½ï¿½ï¿½Ã»ï¿½ï¿½ï¿½ï¿½Ñ¯ï¿½Ã»ï¿½ï¿½ï¿½ï¿½
	 * sessionï¿½ï¿½ï¿½ï¿½ï¿½Ã»ï¿½ï¿½ï¿½
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
