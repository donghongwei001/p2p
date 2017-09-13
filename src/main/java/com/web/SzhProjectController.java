package com.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.SzhProject;
import com.service.SzhProjectService;

@Controller
public class SzhProjectController {
	@Autowired
	private SzhProjectService sps;
	@RequestMapping(value="/queryProject")
	@ResponseBody
	public List<SzhProject> query(){
		List<SzhProject> sp=sps.queryProject();
		return sp;
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
}
