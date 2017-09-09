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
	 * ��ѯ�������Ŀ
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
	 * ��ѯ���ڵ���Ŀ
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
	 * ��ѯ��Ҫ�ڶ�����˵���Ŀ
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
	 * һ�����ʱ�鿴�û���Ϣ����
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
	 * �������ʱ�鿴��Ŀ����
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
		 * �����ûͨ��������
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
	 * ��ѯҪ��������Ŀ
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
		 * ��ѯ��һ�����ûͨ������Ŀ
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
		 * ��ѯ�ڶ������ûͨ������Ŀ
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
