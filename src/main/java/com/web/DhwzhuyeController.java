package com.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.service.DhwzhuyeService;

@Controller
@RequestMapping("/dyt")
public class DhwzhuyeController {

	@Autowired
	private DhwzhuyeService dhwzhuyeService;
	@RequestMapping("/sel")
	public @ResponseBody List<Map> seldome(Model model){
		List<Map> list=dhwzhuyeService.selectdemo();
		return list;
	}
	@RequestMapping("/demo")
	public void sll(HttpServletRequest request){
		System.out.println(request.getParameter("id"));
		System.out.println("11111");
	}
}
