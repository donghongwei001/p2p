package com.web;

import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.entity.Ypg;
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
	
	/**
	 * 查询还款计划表
	 * @param id
	 * @return
	 */
	@RequestMapping("/YpgSchedule")
	@ResponseBody
	public List<Map> querySchedule(@RequestParam int id){
		//System.out.println(id+"----------------------------");
		List<Map> schedule=reService.querySchedule(id);
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		for (int i = 0; i < schedule.size(); i++) {
			String time=simpleDateFormat.format(schedule.get(i).get("REPAYDATE"));
			schedule.get(i).put("time1", time);
			
		}
		return schedule;
	}
	
	@RequestMapping("/YpgProblem")
	@ResponseBody
	public String problems(@RequestBody String data){
		Ypg yy=JSON.parseObject(data,Ypg.class);
		List<Map> problemList=reService.queryProblems(yy);
		return "asd";
	}
	
	@RequestMapping("/ypgouttime")
	@ResponseBody
	public List<Map> selectOutTimetable() {
		List<Map> outtimeList=reService.selectOutTimetable();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		for (int i = 0; i < outtimeList.size(); i++) {
			String time=simpleDateFormat.format(outtimeList.get(i).get("LASTTIME"));
			outtimeList.get(i).put("LASTTIME", time);
		}
		return outtimeList;
	}
	
	@RequestMapping("/ypgMoHuCXun")
	@ResponseBody
	public List<Map> queryOutTimetable(String comname){
		List<Map> outTimeList=reService.queryOutTimetable(comname);
		return outTimeList;
	}
}
