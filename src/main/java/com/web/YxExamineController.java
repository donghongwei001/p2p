package com.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Outtime;
import com.entity.YxExamine;
import com.entity.YxFirst;
import com.service.YxExamineService;

@Controller
@RequestMapping("/yx")
public class YxExamineController {
	@Autowired
	private YxExamineService yxservice;
	
	@RequestMapping(value="/first")
	public String query(Model m){
		List<YxExamine> ly=yxservice.queryexam();
		m.addAttribute("ly", ly);
		return "one";
	}
	@RequestMapping(value="/yuqi")
	public String queryy(Model m){
		List<Outtime> lo=yxservice.queryx();
		m.addAttribute("lo",lo);
		return "overdue";
	}
	
	@RequestMapping(value="/chushe")
	public String queryyy(Model m){
		List<YxFirst> lm=yxservice.queryftt();
		m.addAttribute("lm",lm);
		return "first";
	}
}
