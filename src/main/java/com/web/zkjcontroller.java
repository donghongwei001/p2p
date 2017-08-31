package com.web;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.entity.Zkjproject;
import com.service.Zkjservicedao;

@Controller
public class zkjcontroller {
	@Autowired
	private Zkjservicedao servicedao;
	public void saveproject(HttpServletRequest request,HttpSession session){
		int userid=(int)session.getAttribute("userid");
	String	projectname=request.getParameter("projectname");
	String projecttype=request.getParameter("projecttype");
	String location=request.getParameter("location");
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String time=sdf.format(new Date());
	String mm=request.getParameter("money");
	double money=Double.valueOf(mm).doubleValue();
	String ss=request.getParameter("lifeloan");
	int lifeloan=Integer.parseInt(ss);
	String rr=request.getParameter("ratemoney");
	int ratemoney=Integer.parseInt(rr);
	Zkjproject pp=new Zkjproject();
	pp.setUserid(userid);
	pp.setProjectname(projectname);
	pp.setProjecttype(projecttype);
	pp.setLocation(location);
	pp.setTime(time);
	pp.setMoney(money);
	pp.setLifeloan(lifeloan);
	pp.setRatemoney(ratemoney);
	servicedao.saveproject(pp);
	
	}
}
