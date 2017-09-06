package com.web;

import java.util.List;
import java.util.Map;

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
	 * �������ʱ�鿴��Ŀ����
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/xiang")
	public ModelAndView queryxiang(@RequestBody int id){
		
		List<Map> lsm=yxservice.queryss(id);
		System.out.println(id);
		System.out.println(lsm.size());
		ModelAndView mm=new ModelAndView();
		mm.addObject("lsm", lsm);
		mm.setViewName("Yxright");
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

}
