package com.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.ZxlMyProject;
import com.service.ZxlMyProjectService;
/**
 * 控制层
 * @author ZXL
 *
 */
@Controller
@RequestMapping("/myproject")
public class ZxlMyProjectController {
	@Autowired
	private ZxlMyProjectService projectservice;
	/**
	 * 该用户的项目
	 * @param request
	 * @return
	 */
	@RequestMapping("/listproject")
	public String listproject(HttpServletRequest request){
		List<ZxlMyProject> list=projectservice.listproject();
		request.setAttribute("project", list);
		return "myproject";
	}
}
