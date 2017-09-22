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

import com.alibaba.fastjson.JSON;
import com.entity.Page;
import com.entity.Pageresult;
import com.entity.yuqi;
import com.service.YxFirsttableService;
import com.service.ZxlUserService;
import com.service.zhishouservice;

@Controller
@RequestMapping("/total")
public class zhishouController {

	@Autowired
	private zhishouservice zhishouservices;
	@Autowired
	private YxFirsttableService yxservice;
	@Autowired
	private ZxlUserService zxluserservice;
	/*
	 * 查询公司现在所有钱
	 */
	@RequestMapping("/money")
	@ResponseBody
	public int querytotalmoney(){
		int index=zhishouservices.querytotalmoney();
		return index;
		
	}
	/*
	 * 查询所有的收支记录
	 * 实行分页查询
	 */
	@RequestMapping("/shouzhi")
	@ResponseBody
	public Pageresult selshouzhi(Integer page,Integer rows){
		List<Map> list=zhishouservices.selshouzhi();
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
	/*
	 * 查询该用户所有的预期还款记录
	 */
	@RequestMapping("/yuqihuankuan")
	@ResponseBody
	public ModelAndView selyuqi(HttpServletRequest request) throws ParseException{
		String userna =(String)request.getSession().getAttribute("abcd");
		List<Map> list=zhishouservices.selyuqi(userna);
		ModelAndView view=new ModelAndView();
		view.addObject("yuqihuankuan", list);
		view.setViewName("yuqihuankuan");
		return view;
		
	}
	/*
	 * 用户还款逾期金额
	 */
	@RequestMapping("/yuqihuan")
	@ResponseBody
	public int huanyuqi(@RequestBody String str){
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String time=simpleDateFormat.format(new Date());
		int flag=0;
		yuqi yu=JSON.parseObject(str, yuqi.class);
		String shijian=zhishouservices.seltime(yu.getId(), yu.getLastmoney());
		if (shijian==null||shijian=="") {
			int id=zxluserservice.seluser(yu.getId());
			int qian=zxluserservice.seljinqian(id);
			if (qian>yu.getMoney()) {
				int money1=zhishouservices.querytotalmoney();
				double total=money1+yu.getMoney();
				int i=(int) total;
				yxservice.updatetotalmoney(i);
				String name=zxluserservice.selusername(id);
				zxluserservice.updatemoney(qian-yu.getMoney(), name);
				zhishouservices.updatenew(time, yu.getDay(), yu.getMoney(), yu.getId(), yu.getLastmoney());
				flag=2;
			}else {
				flag=1;
			}
		}
		
		return flag;
		
	}
}
