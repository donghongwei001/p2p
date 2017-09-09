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

import com.entity.Page;
import com.entity.Pageresult;
import com.entity.ZkjInvest;
import com.entity.Zkjproject;
import com.service.Zkjservicedao;

@Controller
@RequestMapping("/add")
public class Zkjcontroller {
	@Autowired
	private Zkjservicedao servicedao;
	/*
	 * 锟�锟斤拷鎹簱鎻掑叆鐢宠椤圭洰鐨勬暟锟�
	 */
	@RequestMapping("project")
	public String saveproject(Zkjproject pp,HttpServletRequest request){
		//	int userid=(int)session.getAttribute("userid");
		int userid=3;
		pp.setAppendix("闄勪欢");
		pp.setAduitstate(1);//鏈锟�
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
	 * 浜屾瀹℃牳鏌ヨ鐨勯」锟�
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
	 * 鏌ヨ鐢ㄦ埛
	 */
	@RequestMapping("/user")
	@ResponseBody
	public Pageresult selectusers(Integer page,Integer rows){
		int page1=page;
		int rows1=rows;
		List<Map> list=servicedao.selectusers();
		Page<Map> paging=new Page<Map>();
		List<Map> list1=paging.paging(list,rows1,page1);
		System.out.println(list1.size());
		Pageresult<Map> pResult=new Pageresult<Map>();
		
		pResult.setTotal(list.size());
		pResult.setRows(list1);
		return pResult;
	}
	/*
	 * 绂佺敤鐢ㄦ埛
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
	 * 鎶曡祫鐣岄潰
	 */
	@RequestMapping("allproject")
	public ModelAndView quertallproject(HttpServletRequest request){
		
	//System.out.println(id+"id");
		int  id=Integer.parseInt(request.getParameter("id"));
		ModelAndView mm=new ModelAndView();
		
		List<Map> listp=servicedao.selectallproject(id);
		mm.addObject("listp",listp);
		mm.setViewName("singleproject");
		return mm;
	}
	/*1.
	 * 鎻掑叆鍒版姇璧勮〃(鏀炬琛�
	 */
	@RequestMapping("/money")
	public void projectmoney(HttpServletRequest request,HttpSession session){
		String username=(String) session.getAttribute("abcd");
		ZkjInvest zz=new ZkjInvest();
		String mm=request.getParameter("money");
		double money=Double.parseDouble(mm);
		zz.setMoney(money);
		System.out.println(zz.getSubjectid());
		servicedao.addinvest(zz,username);
	}
	/*
	 * 鏍规嵁鐢ㄦ埛鍚嶆煡璇㈢敤鎴穒d
	 */
	@RequestMapping("/name")
	@ResponseBody
	public String queryname(HttpSession session){
		String name=(String) session.getAttribute("abcd");
		return servicedao.queryname(name);
		
	}
}
