package com.web;

import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Outtime;
import com.entity.Page;
import com.entity.Pageresult;
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
	public Pageresult query(Integer page,Integer rows){
		int page1=page;
		int rows1=rows;
		List<Map> ly=yxservice.queryexam();
		/*m.addAttribute("ly", ly);*/
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		for (int i = 0; i < ly.size(); i++) {
			String time=simpleDateFormat.format(ly.get(i).get("TIME"));
			ly.get(i).put("time1", time);
			
		}
		Page<Map> paging=new Page<Map>();
		List<Map> list1=paging.paging(ly,rows1,page1);
		Pageresult<Map> pResult=new Pageresult<Map>();
		
		pResult.setTotal(ly.size());
		pResult.setRows(list1);
		return pResult;
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
	public Pageresult queryyy(Integer page,Integer rows){
		List<Map> lm=yxservice.queryftt();
		int page1=page;
		int rows1=rows;
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		for (int i = 0; i < lm.size(); i++) {
			String time=simpleDateFormat.format(lm.get(i).get("FIRSTDATE"));
			lm.get(i).put("time1", time);
			
		}
		Page<Map> paging=new Page<Map>();
		List<Map> list1=paging.paging(lm,rows1,page1);
		Pageresult<Map> pResult=new Pageresult<Map>();
		
		pResult.setTotal(lm.size());
		pResult.setRows(list1);
		return pResult;
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
		@ResponseBody
		public Pageresult queryfafa(Integer page,Integer rows){
			int page1=page;
			int rows1=rows;
			List<Map> lm=yxservice.queryfa();
			Page<Map> paging=new Page<Map>();
			List<Map> list1=paging.paging(lm,rows1,page1);
			Pageresult<Map> pResult=new Pageresult<Map>();
			pResult.setTotal(lm.size());
			pResult.setRows(list1);
			return pResult;
			//return lm;
		}
		/**
		 * 查询第一次审核没通过的项目
		 * @return
		 */
		@RequestMapping(value="/notone")
		@ResponseBody
		public Pageresult queryone(Integer page,Integer rows){
			int page1=page;
			int rows1=rows;
			List<Map> lp=yxservice.querynotone();
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
			for (int i = 0; i < lp.size(); i++) {
				String time=simpleDateFormat.format(lp.get(i).get("BEGINTIME"));
				lp.get(i).put("time1", time);
				
			}
			Page<Map> paging=new Page<Map>();
			List<Map> list1=paging.paging(lp,rows1,page1);
			Pageresult<Map> pResult=new Pageresult<Map>();
			pResult.setTotal(lp.size());
			pResult.setRows(list1);
			return pResult;
		
		}
		
		/**
		 * 查询第二次审核没通过的项目
		 * @return
		 */
		@RequestMapping(value="/nottwo")
		@ResponseBody
		public Pageresult querytwo(Integer page,Integer rows){
			int page1=page;
			int rows1=rows;
			List<Map> mp=yxservice.querytwo();
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
			for (int i = 0; i < mp.size(); i++) {
				String time=simpleDateFormat.format(mp.get(i).get("BEGINTIME"));
				mp.get(i).put("time1", time);
				String time1=simpleDateFormat.format(mp.get(i).get("FIRSTDATE"));
				mp.get(i).put("time2", time1);
				
			}
			Page<Map> paging=new Page<Map>();
			List<Map> list1=paging.paging(mp,rows1,page1);
			Pageresult<Map> pResult=new Pageresult<Map>();
			pResult.setTotal(mp.size());
			pResult.setRows(list1);
			return pResult;
		}
		/**
		 * 发布中，下架的看详情
		 * @param request
		 * @return
		 */
	@RequestMapping("/removexmsel")
		@ResponseBody
		public List<Map> querythree(HttpServletRequest request){
			int id=Integer.parseInt(request.getParameter("id"));
			List<Map> lmp=yxservice.queryde(id);
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
			for (int i = 0; i < lmp.size(); i++) {
				System.out.println(lmp.get(i).get("BEGINTIME"));
				String time=simpleDateFormat.format(lmp.get(i).get("BEGINTIME"));
				lmp.get(i).put("time1", time);
				if(lmp.get(i).get("LASTTIME")!=null && lmp.get(i).get("LASTTIME")!=""){
					String time1=simpleDateFormat.format(lmp.get(i).get("LASTTIME"));
					lmp.get(i).put("time2", time1);
				}
				
				
			}
	
			return lmp;
		}
		
		
}
