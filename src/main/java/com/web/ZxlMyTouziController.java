package com.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.ZxlMyTouzi;
import com.service.ZxlMyTouziService;
@Controller
@RequestMapping("/mytouzi")
public class ZxlMyTouziController {
	@Autowired
	private ZxlMyTouziService touziservice;
	@RequestMapping("/listmytouzi")
	public String listmytouzi(HttpServletRequest request){
		List<ZxlMyTouzi> list=touziservice.listmytouzi();
		request.setAttribute("touzi", list);
		return "mytouzi";
	}
}
