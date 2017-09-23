package com.web;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.entity.SzhPage;
import com.entity.SzhProject;
import com.service.SzhProjectService;

@Controller
public class SzhProjectController {
	@Autowired
	private SzhProjectService sps;
	@RequestMapping(value="/queryProject")
	@ResponseBody
	public String query(SzhPage spg){
		System.out.println(spg.getPage()+":"+spg.getRows());
		Map<String,Object> sp=sps.queryProject(spg);
		return JSON.toJSONStringWithDateFormat(sp, "yyyy-MM-dd HH:mm:ss");
	}
	@RequestMapping(value="/queryPart")
	@ResponseBody
	public List<SzhProject> queryPart(String comname){
		List<SzhProject> spp = sps.queryPart(comname);
		return spp;
	}
	@RequestMapping(value="/queryUser")
	@ResponseBody
	public List<SzhProject> queryUser(String user){
		System.out.println(user);
		List<SzhProject> sppp = sps.queryUser(user);
		return sppp;
	}
	@RequestMapping(value="/queryTime")
	@ResponseBody
	public List<SzhProject> queryTime(String zzz,String hhh){
		List<SzhProject> spppp = sps.queryTime(zzz, hhh);
		return spppp;
	}
	@RequestMapping(value="/queryAll",produces="text/html;charset=UTF-8")
	@ResponseBody
	public String queryAll(){
		String sppppp = sps.queryAll();
		return sppppp;
	}
	@RequestMapping(value="/queryAllTwo",produces="text/html;charset=UTF-8")
	@ResponseBody
	public String queryAllTwo(){
		String spppppp = sps.queryAllTwo();
		return spppppp;
	}
}
