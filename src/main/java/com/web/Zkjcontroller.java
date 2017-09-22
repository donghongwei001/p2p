package com.web;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.dao.Zkjdaointerface;
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
	@Autowired
	private Zkjdaointerface zkjdaointerface;
	/*
	 * 锟�锟斤拷鎹簱鎻掑叆鐢宠椤圭洰鐨勬暟锟�
	 */
	@RequestMapping("project")
	public String saveproject(@RequestParam("file") MultipartFile file,Zkjproject pp,HttpSession session,HttpServletRequest request){
		System.out.println(file);
		fileUpload fileupload=new fileUpload();	
		String  username=(String)session.getAttribute("abcd");
		String photo = fileupload.saveFiles(file, request);	
		
		pp.setAppendix(photo);
		pp.setAduitstate(1);//鏈锟�
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd ");
		String time=sdf.format(new Date());
		String location=request.getParameter("location1")+request.getParameter("location2")+request.getParameter("location3");
		pp.setLocation(location);
		pp.setTime(time);
	//	pp.setUserid(userid);
		System.out.println(pp);
		servicedao.saveproject(pp,username);
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
		servicedao.updateuser(name);
		
	
		return "success";
	}
	@RequestMapping("/start")
	@ResponseBody
	public String startuser(@RequestBody String str){
		servicedao.updatestartuser(str);
		
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

	@RequestMapping("/queryuserinfo")
	@ResponseBody
	public Pageresult queryuserinfo(Integer page,Integer rows){
		int page1=page;
		int rows1=rows;
		List<Map> list=servicedao.queryuserinfo();
		Page<Map> paging=new Page<Map>();
		List<Map> list1=paging.paging(list,rows1,page1);
		System.out.println(list1.size());
		Pageresult<Map> pResult=new Pageresult<Map>();
		
		pResult.setTotal(list.size());
		pResult.setRows(list1);
		return pResult;
		
	}
	@RequestMapping("/queryoneuserinfo")
	@ResponseBody
	public Pageresult queryuserinfo(Integer page,Integer rows,String name){
		int page1=page;
		int rows1=rows;
		String rname="%"+name+"%";
		List<Map> list=servicedao.queryoneuserinfo(rname);
		Page<Map> paging=new Page<Map>();
		List<Map> list1=paging.paging(list,rows1,page1);
		System.out.println(list1.size());
		Pageresult<Map> pResult=new Pageresult<Map>();
		
		pResult.setTotal(list.size());
		pResult.setRows(list1);
		return pResult;
		
	} 

}
