package com.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.entity.ZxlMyPersonal;
import com.entity.ZxlMyProject;
import com.entity.ZxlMyTouzi;
import com.entity.ZxlUser;
import com.service.ZxlUserService;
/**
 * ���Ʋ�
 * @author ZXL
 *
 */
@Controller
@RequestMapping("/user")
public class ZxlUserController {
	@Autowired
	private ZxlUserService userservice;
	/**
	 * ��ѯ�ñ���������
	 * @param request
	 * @return
	 */
	@RequestMapping("/list")
	public String list(HttpServletRequest request){
		List<ZxlUser> list=userservice.list();
		request.setAttribute("user", list);
		return "Home";
	}
	/**
	 * �û������
	 * ע��
	 * @ResponseBody ��������ص�ǰ̨
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
	 * �û��ĵ�¼
	 * @ResponseBody ��������ص�ǰ̨
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
	 * ���û�����Ŀ
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
	 * ��ѯ���û���Ͷ�ʵ���Ŀ
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
	 * ��ѯ���û��Ļ���Ϣ
	 * ����û���
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
	 * �޸�����
	 * ȷ�Ͼ�����
	 * ����������
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
	 * ��ѯ������Ŀ
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
	 * ����û����ѯ�û����
	 * session�����û���
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
