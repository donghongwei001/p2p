package com.web;

import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.entity.Page;
import com.entity.Pageresult;
import com.service.YxFirsttableService;
import com.service.ZxlUserService;
import com.service.zhishouservice;

@Controller
@RequestMapping("/total")
public class zhishouController {

	@Autowired
	private zhishouservice zhishouservices;
	/*@Autowired
	private YxFirsttableService yxservice;*/
	@Autowired
	private ZxlUserService zxluserservice;
	
	@RequestMapping("/money")
	@ResponseBody
	public int querytotalmoney(){
		int index=zhishouservices.querytotalmoney();
		return index;
		
	}
	@RequestMapping("/shouzhi")
	@ResponseBody
	public Pageresult selshouzhi(Integer page,Integer rows){
		List<Map> list=zhishouservices.selshouzhi();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		for (int i = 0; i < list.size(); i++) {
			String time=simpleDateFormat.format(list.get(i).get("TIME"));
			list.get(i).put("time1", time);
			
		}
		int page1=page;
		int rows1=rows;
		Page<Map> paging=new Page<Map>();
		List<Map> list1=paging.paging(list,rows1,page1);
		System.out.println(list1.size());
		Pageresult<Map> pResult=new Pageresult<Map>();
		
		pResult.setTotal(list.size());
		pResult.setRows(list1);
		return pResult;
		
	}
	@RequestMapping("/yuqihuankuan")
	@ResponseBody
	public ModelAndView selyuqi(HttpServletRequest request) throws ParseException{
		DecimalFormat df = new DecimalFormat("#.##");
		String userna =(String)request.getSession().getAttribute("abcd");
		List<Map> list=zhishouservices.selyuqi(userna);
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		for (int i = 0; i < list.size(); i++) {
			String time=simpleDateFormat.format(list.get(i).get("LASTTIME"));
			list.get(i).put("time1", time);
			Object dd=list.get(i).get("NEWTIME");
			if (dd==null||dd=="") {
				String newdate=simpleDateFormat.format(new Date());
				Date d1=simpleDateFormat.parse(time);
				Date d2=simpleDateFormat.parse(newdate);
				int day=daysBetween(d1, d2);
				if (d1.getTime()>d2.getTime()) {
					continue;
				}
				if (day>3) {
					String money=list.get(i).get("LASTMONEY").toString();
					double qian=Double.valueOf(money).doubleValue();
					double newmoney=qian*Math.pow(1.005,(day-3));
					String newmoney1=df.format(newmoney);
					list.get(i).put("NEWMONEY", newmoney1);
				}
				list.get(i).put("NEWDAY", day);
			}
			
			
			
			
		}
		ModelAndView view=new ModelAndView();
		view.addObject("yuqihuankuan", list);
		view.setViewName("yuqihuankuan");
		return view;
		
	}
	/*
	 * 计算两个日期之间相差的天数
	 */
	public static int daysBetween(Date smdate,Date bdate) throws ParseException    
    {    
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");  
        smdate=sdf.parse(sdf.format(smdate));  
        bdate=sdf.parse(sdf.format(bdate));  
        Calendar cal = Calendar.getInstance();    
        cal.setTime(smdate);    
        long time1 = cal.getTimeInMillis();                 
        cal.setTime(bdate);    
        long time2 = cal.getTimeInMillis();         
        long between_days=(time2-time1)/(1000*3600*24);  
            
       return Integer.parseInt(String.valueOf(between_days));           
    }  
	@RequestMapping("/yuqihuan")
	@ResponseBody
	public int huanyuqi(int index,int money,int newqian,int tian){
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		int flag=0;
		System.out.println(index+"****"+money+"***"+newqian+tian);
		/*int id=zxluserservice.seluser(index);
		int qian=zxluserservice.seljinqian(id);
		String newdate=simpleDateFormat.format(new Date());
		Date d1=simpleDateFormat.parse(time);
		Date d2=simpleDateFormat.parse(newdate);
		if (qian>newqian) {
			int money1=zhishouservices.querytotalmoney();
			int total=money1+newqian;
			yxservice.updatetotalmoney(total);
			String name=zxluserservice.selusername(id);
			zxluserservice.updatemoney(qian-newqian, name);
			zhishouservices.updatenew(date, day, newqian, index, money);
		}else {
			flag=1;
		}*/
		return flag;
		
	}
}
