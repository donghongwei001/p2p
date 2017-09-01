package com.web;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Zkjproject;
import com.service.Zkjservicedao;

@Controller
@RequestMapping("/add")
public class zkjcontroller {
	@Autowired
	private Zkjservicedao servicedao;
	@RequestMapping("project")
	public void saveproject(Zkjproject pp,HttpServletRequest request){
	
		System.out.println("sssssssssssssss");
	//	int userid=(int)session.getAttribute("userid");
		int userid=3;
	/*String	projectname=request.getParameter("projectname");
	String projecttype=request.getParameter("projecttype");
	String location=request.getParameter("location");
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String time=sdf.format(new Date());
	String mm=request.getParameter("money");
	double money=Double.valueOf(mm).doubleValue();
	String ss=request.getParameter("lifeloan");
	int lifeloan=Integer.parseInt(ss);
	String rr=request.getParameter("ratemoney");
	double ratemoney=Double.parseDouble(rr);
	Zkjproject pp=new Zkjproject();
	pp.setUserid(userid);
	System.out.println(userid);
	pp.setProjectname(projectname);
	System.out.println(projectname);
	pp.setProjecttype(projecttype);
	System.out.println(projecttype);
	pp.setLocation(location);
	System.out.println(location);
	pp.setTime(time);
	System.out.println(time);
	pp.setMoney(money);
	System.out.println(money);
	pp.setLifeloan(lifeloan);
	System.out.println(lifeloan);
	pp.setRatemoney(ratemoney);
	System.out.println(ratemoney);*/
	pp.setAppendix("附件");
	
	pp.setAduitstate(1);//未审核
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd ");
		String time=sdf.format(new Date());
	String location=request.getParameter("location1")+request.getParameter("location2")+request.getParameter("location3");
	pp.setLocation(location);
		pp.setTime(time);
		pp.setUserid(userid);
		System.out.println(pp);
	servicedao.saveproject(pp);
	
	}
}
