package com.web;

import java.io.File;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.entity.ZkjInvest;
import com.service.Zkjservicedao;
import com.service.Zkjservicedaointerface;

@Controller
@RequestMapping("/zkj")
public class Zkjcontrollerweb {
	@Autowired
	private Zkjservicedaointerface servicedao;
	@Autowired
	private Zkjservicedao ssdao;
	
	/*
	 * 閹舵洝绁悾宀勬桨
	 */
	@RequestMapping("allproject")
	public ModelAndView quertallproject(HttpServletRequest request){
		
	//System.out.println(id+"id");
		int  id=Integer.parseInt(request.getParameter("id"));
		ModelAndView mm=new ModelAndView();
	int surplusinvest=	servicedao.surplusinvest(id);
		mm.addObject("surplusmoney",surplusinvest);
		List<Map> listp=ssdao.selectallproject(id);
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
	 * 閹绘帒鍙嗛崚鐗堝鐠у嫯銆�閺�偓顑欑悰锟�
=======
	/*
	 * 鎻掑叆鍒版姇璧勮〃(鏀炬琛�

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
	
		ssdao.addinvest(zz,username);
	}
	/*
	 * 閺嶈宓侀悽銊﹀煕閸氬秵鐓＄拠銏㈡暏閹寸d
	 */
	@RequestMapping("/name")
	@ResponseBody
	public String queryname(HttpSession session){
		String name=(String) session.getAttribute("abcd");
		return ssdao.queryname(name);
		
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