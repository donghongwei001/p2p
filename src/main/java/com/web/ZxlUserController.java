package com.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
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
	 * ��ѯ�ñ����������
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
	 * @ResponseBody �����������ص�ǰ̨
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
	 * @ResponseBody �����������ص�ǰ̨
	 * @param str
	 * @return
	 */
	@RequestMapping("/login")
	@ResponseBody
	public String login(@RequestBody String str){ 
		System.out.println(str);
		ZxlUser zu=JSON.parseObject(str, ZxlUser.class);
        if(userservice.find(zu)) {
        	 return "Ok";  
        } 
        else{
        	return null;
        }
    } 
}
