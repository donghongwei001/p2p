package com.web;

import java.io.File;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.web.session.HttpServletSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.entity.ZkjCapitalaverage;
import com.entity.ZkjInvest;
import com.entity.Zkjinvestor;
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
	public ModelAndView quertallproject(HttpServletRequest request,HttpSession session){
		String name=(String)session.getAttribute("abcd");
		String personalinformation=servicedao.selectid(name);
		ModelAndView mm=new ModelAndView();
		if(personalinformation==null||personalinformation==""){
			mm.setViewName("investor");
			return mm;
		}else{
	//System.out.println(id+"id");
		int  id=Integer.parseInt(request.getParameter("id"));
		
	int surplusinvest=	servicedao.surplusinvest(id);
		mm.addObject("surplusmoney",surplusinvest);
		List<Map> listp=ssdao.selectallproject(id);
		
		/*System.out.println(listp.size()+"asdasda");
		double money=(double)listp.get(0).get("RATEMONEY")*100;
		String ratemoney=Double.toString(money);
		mm.addObject("ratemoney",ratemoney);*/
		
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
	}

	/*1.
	 * 閹绘帒鍙嗛崚鐗堝鐠у嫯銆�閺�偓顑欑悰锟�
	 *
	 * 鎻掑叆鍒版姇璧勮〃(鏀炬琛�
	 */
	@RequestMapping("/money")
	public String projectmoney(HttpServletRequest request,HttpSession session){
		String username=(String) session.getAttribute("abcd");
		ZkjInvest zz=new ZkjInvest();
		String mm=request.getParameter("money");
		System.out.println(mm);
		double money=Double.parseDouble(mm);
		zz.setMoney(money);
		String ss=request.getParameter("subjectid");
		System.out.println(ss);
		int subjectid=Integer.parseInt(ss);
		System.out.println(subjectid+"subjectid");
		zz.setUsername(username); 
		zz.setSubjectid(subjectid);
		ssdao.addinvest(zz,username);
		return "zkjsuccess";
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
	@RequestMapping("/capital")
	@ResponseBody
	public String[] suancapital(@RequestBody String data){
		ZkjCapitalaverage zz=JSON.parseObject(data, ZkjCapitalaverage.class);
		System.out.println(zz);
		Capitalaverage cc=new Capitalaverage();
		double monthIncome=cc.getPerMonthPrincipalInterest(zz.getMmoney(),zz.getRate()*12,zz.getLife());//每月应还的利息和本金
		double charge=zz.getMmoney()*0.01;//服务费
		double totalmoney=zz.getMmoney()+cc.getInterestCount(zz.getMmoney(),zz.getRate()*12,zz.getLife());//本金+总利息
		String[] str=new String[]{Double.toString(monthIncome) ,Double.toString(charge),Double.toString(totalmoney)};
		return str;
	}
	/*
	 * 保存投资人的身份信息
	 */
	@RequestMapping("/savenvestor")
	public String saveinvestor(HttpSession session,Zkjinvestor zz){
		String name=(String) session.getAttribute("abcd");
		servicedao.saveinvestor(zz, name);
		return "index";
	}
	/*
	 * 查询投资人的信息
	 */
	@RequestMapping("selectinvector")
	@ResponseBody
	public String selectinvector(HttpSession session){
		String name=(String)session.getAttribute("abcd");
		return servicedao.selectid(name);
	}
}
