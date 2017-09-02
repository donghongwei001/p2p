package com.web;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
	public void saveproject(Zkjproject pp,HttpServletRequest request){
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
	/*@RequestMapping("/user")
	public String selectusers(){
		List<Map> listu=servicedao.selectusers();

		return "yonghu";
	}*/
}
