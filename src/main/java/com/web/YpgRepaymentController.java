package com.web;

import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.service.YpgRepaymentService;

@Controller
@RequestMapping("/repay")
public class YpgRepaymentController {
	@Autowired
	private YpgRepaymentService reService;
	
	@RequestMapping("/repayment")
	@ResponseBody
	public List<Map> queryRepayment(){
		List<Map> repaymentList=reService.queryRepayment();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		for (int i = 0; i < repaymentList.size(); i++) {
			String time=simpleDateFormat.format(repaymentList.get(i).get("TIME"));
			repaymentList.get(i).put("TIME2", time);
			
		}
		return repaymentList;
	}
	
	/*@RequestMapping("/publish")
	public String queryPublish(HttpServletRequest request){
		List<Map> publishList=reService.queryPublish();
		request.setAttribute("publl", publishList);
		
		List<Map> publish=reService.queryMinute();
		request.setAttribute("min", publish);
		
		return "YpgPublish";
	}*/
	
	/**
	 * 查询还款计划表
	 * @param id
	 * @return
	 */
	@RequestMapping("/YpgSchedule")
	@ResponseBody
	public List<Map> querySchedule(@RequestParam int id){
		System.out.println(id+"----------------------------");
		List<Map> schedule=reService.querySchedule(id);
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		for (int i = 0; i < schedule.size(); i++) {
			String time=simpleDateFormat.format(schedule.get(i).get("REPAYDATE"));
			schedule.get(i).put("time1", time);
			
		}
		
		//System.out.println(schedule+"_+_+_+_+_+_+_+_+");
		return schedule;
	}
	
}
