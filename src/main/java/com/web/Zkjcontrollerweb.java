package com.web;

import java.io.File;
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

import com.entity.ZkjInvest;
import com.entity.Zkjproject;
import com.service.Zkjservicedaointerface;

@Controller
@RequestMapping("/zkj")
public class Zkjcontrollerweb {
	@Autowired
	private Zkjservicedaointerface servicedao;
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
	public List<Map> selectusers(){
		List<Map> listu=servicedao.selectusers();
		
		return listu;
	}
	/*
	 * 绂佺敤鐢ㄦ埛
	 */
	@RequestMapping("/disable")
	@ResponseBody
	public String disableuser(@RequestBody String name){
		servicedao.updateuser(name);
		//System.out.println(name);
	/*String[] aa=name.split(",");
	String str="";
	for(int i=0;i<aa.le ngth;i++){
		servicedao.updateuser(aa[i]);
		str=str+"'"+aa[i]+"'"+",";
	}
	String str1="";
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
	int surplusinvest=	servicedao.surplusinvest(id);
		mm.addObject("surplusmoney",surplusinvest);
		List<Map> listp=servicedao.selectallproject(id);
		double money=(double)listp.get(0).get("RATEMONEY")*100;
		String ratemoney=Double.toString(money);
		mm.addObject("ratemoney",ratemoney);
		List<Map> listpersonal=servicedao.personalinformation(id);
		System.out.println(listpersonal.size()+"listpersonal");
		String username=servicedao.queryusername(id);
		mm.addObject("username", username);
		mm.addObject("listpersonal",listpersonal);
		List<Map> listi=servicedao.investinformation(id);
		mm.addObject("investinformation", listi);
		mm.addObject("listp",listp);
		List<Map> lists=servicedao.selectinvestinformation(id);
		mm.addObject("selectinvestinformation", lists);
		mm.setViewName("singleproject");
		return mm;
	}

	/*1.
	 * 鎻掑叆鍒版姇璧勮〃(鏀炬琛�
=======
	/*
	 * 插入到投资表(放款表)

	 */
	@RequestMapping("/money")
	public void projectmoney(HttpServletRequest request,HttpSession session){
		String username=(String) session.getAttribute("abcd");
		ZkjInvest zz=new ZkjInvest();
		String mm=request.getParameter("money");
		double money=Double.parseDouble(mm);
		zz.setMoney(money);
		String ss=request.getParameter("subjectid");
		System.out.println(ss);
		int subjectid=Integer.parseInt(ss);
		System.out.println(subjectid+"subjectid");
		zz.setUsername(username);
		zz.setSubjectid(subjectid);
	
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
	public void savepicture(MultipartFile filename,HttpSession session){
	String ffilename=filename.getOriginalFilename();
	ffilename.endsWith("jpg");
	String path=session.getServletContext().getRealPath("/pictures");
	File file=new File(path);
	}
	@RequestMapping("/totalproject")
	public ModelAndView queryallproject(){
		List<Map> listp=servicedao.queryallproject();
		ModelAndView mm=new ModelAndView();
		mm.addObject("allpeoject",listp);
		mm.setViewName("invest");
		return mm;
	}

}
