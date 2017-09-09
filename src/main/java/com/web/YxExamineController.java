package com.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.entity.Outtime;
import com.entity.YxExamine;
import com.entity.YxFirst;
import com.service.YxExamineService;

@Controller
@RequestMapping("/yx")
public class YxExamineController {
	@Autowired
	private YxExamineService yxservice;
	/**
	 * 查询申请的项目
	 * @param m
	 * @return
	 */
	@RequestMapping(value="/first")
	public String query(Model m){
		List<YxExamine> ly=yxservice.queryexam();
		m.addAttribute("ly", ly);
		return "one";
	}
	/**
	 * 查询逾期的项目
	 * @param m
	 * @return
	 */
	@RequestMapping(value="/yuqi")
	public String queryy(Model m){
		List<Outtime> lo=yxservice.queryx();
		m.addAttribute("lo",lo);
		return "overdue";
	}
	/**
	 * 查询需要第二次审核的项目
	 * @param m
	 * @return
	 */
	@RequestMapping(value="/chushe")
	public String queryyy(Model m){
		List<YxFirst> lm=yxservice.queryftt();
		m.addAttribute("lm",lm);
		return "first";
	}
	/**
	 * 一次审核时查看用户信息详情
	 */
@RequestMapping(value="/onex")
	public ModelAndView queryonex(HttpServletRequest request){
		int id=Integer.parseInt(request.getParameter("userid"));
		List<Map> llm=yxservice.queryuserid(id);
		ModelAndView mm=new ModelAndView();
		mm.addObject("llm", llm);
		mm.setViewName("Yxuser");
		return mm;
	}
	/**
	 * 二次审核时查看项目详情
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/xiang")
	public ModelAndView queryxiang(HttpServletRequest request){
		int id=Integer.parseInt(request.getParameter("projectid"));
		List<Map> lsm=yxservice.queryss(id);
		ModelAndView mm=new ModelAndView(); 
		mm.addObject("lsm", lsm);
		mm.setViewName("Yxright");
		return mm;
	}
	
		/**
		 * 查初审没通过的详情
		 * @param request
		 * @return
		 */
		@RequestMapping(value="/onequery")
		public ModelAndView queryxi(HttpServletRequest request){
			int id=Integer.parseInt(request.getParameter("projectid"));
			List<Map> lsm=yxservice.queryf(id);
			ModelAndView mm=new ModelAndView(); 
			mm.addObject("ld", lsm);
			mm.setViewName("oneselect");
			return mm;
		}
	/**
	 * 查询要发布的项目
	 * @return
	 */
		@RequestMapping(value="/fa")
		public ModelAndView queryfafa(){
			List<Map> lm=yxservice.queryfa();
			ModelAndView mm=new ModelAndView();
			mm.addObject("lm", lm);
			mm.setViewName("Fabu");
			return mm;
		}
		/**
		 * 查询第一次审核没通过的项目
		 * @return
		 */
		@RequestMapping(value="/notone")
		public ModelAndView queryone(){
			List<Map> lp=yxservice.querynotone();
			ModelAndView mm=new ModelAndView();
			mm.addObject("lp", lp);
			mm.setViewName("notfirst");
			return mm;
		}
		/**
		 * 查询第二次审核没通过的项目
		 * @return
		 */
		@RequestMapping(value="/nottwo")
		public ModelAndView querytwo(){
			List<Map> mp=yxservice.querytwo();
			ModelAndView mm=new ModelAndView();
			mm.addObject("mp", mp);
			mm.setViewName("nottwo");
			return mm;
		}
		

}
