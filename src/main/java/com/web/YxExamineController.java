package com.web;

import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.entity.Outtime;
import com.entity.Page;
import com.entity.Pageresult;
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
	@ResponseBody
	public List<Map> query(){
		List<Map> ly=yxservice.queryexam();
		/*m.addAttribute("ly", ly);*/
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		for (int i = 0; i < ly.size(); i++) {
			String time=simpleDateFormat.format(ly.get(i).get("TIME"));
			ly.get(i).put("time1", time);
			
		}
		return ly;
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
	@ResponseBody
	public List<Map> queryyy(){
		List<Map> lm=yxservice.queryftt();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		for (int i = 0; i < lm.size(); i++) {
			String time=simpleDateFormat.format(lm.get(i).get("FIRSTDATE"));
			lm.get(i).put("time1", time);
			
		}
		return lm;
	}
	/**
	 * 一次审核时查看用户信息详情
	 */
@RequestMapping(value="/onex")
@ResponseBody
	public List<Map> queryonex(HttpServletRequest request){
		int id=Integer.parseInt(request.getParameter("id"));
		List<Map> llm=yxservice.queryuserid(id);
		
		return llm;
	}
	/**
	 * 二次审核时查看项目详情
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/xiang")
	@ResponseBody
	public List<Map> queryxiang(HttpServletRequest request){
		int id=Integer.parseInt(request.getParameter("id"));
		List<Map> lsm=yxservice.queryss(id);
	
		return lsm;
	}
	
		/**
		 * 查初审没通过的详情
		 * @param request
		 * @return
		 */
		@RequestMapping(value="/onequery")
		@ResponseBody
		public List<Map> queryxi(HttpServletRequest request){
			int id=Integer.parseInt(request.getParameter("id"));
			List<Map> lsm=yxservice.queryf(id);
			
			/*ModelAndView mm=new ModelAndView(); 
			mm.addObject("ld", lsm);
			mm.setViewName("oneselect");*/
			return lsm;
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
		@ResponseBody
		public List<Map> queryone(){
			
			List<Map> lp=yxservice.querynotone();
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
			for (int i = 0; i < lp.size(); i++) {
				String time=simpleDateFormat.format(lp.get(i).get("FIRSTDATE"));
				lp.get(i).put("time1", time);
				
			}
			return lp;
		}
		
		/**
		 * 查询第二次审核没通过的项目
		 * @return
		 */
		@RequestMapping(value="/nottwo")
		@ResponseBody
		public List<Map> querytwo(){
			List<Map> mp=yxservice.querytwo();
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
			for (int i = 0; i < mp.size(); i++) {
				String time=simpleDateFormat.format(mp.get(i).get("FINALDATE"));
				mp.get(i).put("time1", time);
				
			}
			return mp;
		}
		

}
