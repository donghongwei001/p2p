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
		@SuppressWarnings("unchecked")
		List<SzhProject> sp=sps.queryProject();
		return sp;
	}
	/*@RequestMapping(value="/queryPart")
	@ResponseBody
	public PagingResult findById(){			
		PagingResult<JYPuserQuery> pResult = new PagingResult<JYPuserQuery>();
		pResult.setRows(list1);
		pResult.setTotal(list.size());
		return pResult;
	}*/

}
