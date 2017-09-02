package com.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.ZxlMyProject;
import com.service.ZxlMyProjectService;

@Controller
@RequestMapping("/myproject")
public class ZxlMyProjectController {
	@Autowired
	private ZxlMyProjectService projectservice;
	@RequestMapping("/listproject")
	public String listproject(HttpServletRequest request){
		List<ZxlMyProject> list=projectservice.listproject();
		request.setAttribute("project", list);
		return "myproject";
	}
}
