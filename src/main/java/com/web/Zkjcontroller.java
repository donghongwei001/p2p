package com.web;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.HttpMediaTypeNotSupportedException;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.entity.ZkjInvest;
import com.entity.Zkjproject;
import com.service.Zkjservicedao;

@Controller
@RequestMapping("/add")
public class Zkjcontroller {
	@Autowired
	private Zkjservicedao servicedao;
	/*
	 * �?��据库插入申请项目的数�?
	 */
	@RequestMapping("project")
	public String saveproject(Zkjproject pp,HttpServletRequest request){
		//	int userid=(int)session.getAttribute("userid");
		int userid=3;
		pp.setAppendix("附件");
		pp.setAduitstate(1);//未审�?
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd ");
		String time=sdf.format(new Date());
		String location=request.getParameter("location1")+request.getParameter("location2")+request.getParameter("location3");
		pp.setLocation(location);
		pp.setTime(time);
		pp.setUserid(userid);
		System.out.println(pp);
		servicedao.saveproject(pp);
		return  "redirect:/user/listpro.do"; 
	}

	/*
	 * 二次审核查询的项�?
	 */
	@RequestMapping("/selectproject")
	public ModelAndView queryproject(){
		List<Map> listp=servicedao.selectproject();
		ModelAndView mm=new ModelAndView();
		mm.addObject("list",listp);
		mm.setViewName("Zkjshenheproject");
		return mm;
	}

	/*
	 * 查询用户
	 */
	@RequestMapping("/user")
	@ResponseBody
	public List<Map> selectusers(){
		List<Map> listu=servicedao.selectusers();
		
		return listu;
	}
	/*
	 * 禁用用户
	 */
	@RequestMapping("/disable")
	@ResponseBody
	public String disableuser(@RequestBody String name){
		
		System.out.println(name);
	String[] aa=name.split(",");
	//String str="";
	for(int i=0;i<aa.length;i++){
		servicedao.updateuser(aa[i]);
		//str=str+"'"+aa[i]+"'"+",";
	}
	/*String str1="";
	for(int i=0;i<str.length()-1;i++){
		str1=str1+str.charAt(i);
	}
	servicedao.updateuser(str1);
	System.out.println(str1);*/
	
		return "success";
	}
	@RequestMapping("/start")
	@ResponseBody
	public String startuser(@RequestBody String str){
		String[] aa=str.split(",");
		for(int i=0;i<aa.length;i++){
			servicedao.updatestartuser(aa[i]);
			System.out.println(aa[i]);
		}
		return "success";
	}
	/*
	 * 投资界面
	 */
	@RequestMapping("allproject")
	public ModelAndView quertallproject(){
		ModelAndView mm=new ModelAndView();
		List<Map> listp=servicedao.selectallproject(2);
		mm.addObject("listp",listp);
		mm.setViewName("singleproject");
		return mm;
	}
	/*
	 * 插入到投资表(放款表)
	 */
	@RequestMapping("/money")
	public void projectmoney(@RequestBody ZkjInvest zz,HttpSession session){
		String username=(String) session.getAttribute("abcd");
		System.out.println(zz.getSubjectid());
		servicedao.addinvest(zz,username);
	}
	@RequestMapping("/name")
	@ResponseBody
	public String queryname(HttpSession session){
		String name=(String) session.getAttribute("abcd");
		return servicedao.queryname(name);
		
	}
}
