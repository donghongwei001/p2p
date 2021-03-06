package com.web;

import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.entity.DhwEmpTab;
import com.entity.YxExamine;
import com.entity.YxFabu;
import com.entity.YxFinaltable;
import com.entity.YxFirsttable;
import com.service.YxFirsttableService;
import com.service.ZxlUserService;
import com.service.zhishouservice;

@Controller
@RequestMapping("/first")
public class YxFirsttableController {
	@Autowired
	private YxFirsttableService firservice;
	@Autowired
	private zhishouservice zhishouservices;
	@Autowired
	private ZxlUserService zxluserservice;
	/**
	 * 第一次项目审核结果插入到数据库
	 * @param json
	 * @param response
	 * @throws ParseException
	 */
	@RequestMapping(value="/shenhe")
	@ResponseBody
	public void sert(@RequestBody String json,HttpServletResponse response,HttpServletRequest request){
		System.out.println("11111111111111111");
		YxFirsttable yft=JSON.parseObject(json,YxFirsttable.class);
		System.out.println(yft.getProjectid());
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String date=simpleDateFormat.format(new Date());
		System.out.println(date);
	//	Date dd=simpleDateFormat.parse(date);
	//	System.out.println(dd);
		
		yft.setFirstdate(date);
		DhwEmpTab usera=(DhwEmpTab)request.getSession().getAttribute("user");
		System.out.println(usera.getEmpname());
		yft.setFirstname(usera.getEmpname());
		 int id=yft.getProjectid();
		 firservice.update(id);
		 firservice.addfirsts(yft);

	}
	
	/**
	 * 第二次审核结果插入到数据库
	 * @param json
	 * @param response
	 */
	@RequestMapping(value="/director")
	public void add(@RequestBody String json,HttpServletResponse response,HttpServletRequest request){
		YxFinaltable yt=JSON.parseObject(json,YxFinaltable.class);
		SimpleDateFormat simp=new SimpleDateFormat("yyyy-MM-dd");
		String date=simp.format(new Date());
		yt.setFinaldate(date);
		DhwEmpTab use=(DhwEmpTab) request.getSession().getAttribute("user");
		yt.setFinalname(use.getEmpname());
		int id=yt.getProjectid();
		firservice.updates(id);
		firservice.addseconds(yt);
	
	}
	/**
	 * 初审失败的插入到项目表
	 * @param json
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/onefailed")
	@ResponseBody
	public void onefail(@RequestBody String json,HttpServletRequest request){
		YxFabu yb=JSON.parseObject(json,YxFabu.class);
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String date=simpleDateFormat.format(new Date());
		yb.setBegintime(date);
		DhwEmpTab usera=(DhwEmpTab)request.getSession().getAttribute("user");
		yb.setOneperson(usera.getEmpname());
		int id=yb.getProjectid();
		firservice.updatexmm(id);
		firservice.onexmm(yb);
		}
		
	@RequestMapping(value="/twofailed")
	@ResponseBody
	public void twofail(@RequestBody String json,HttpServletRequest request){
		YxFabu yb=JSON.parseObject(json,YxFabu.class);
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String date=simpleDateFormat.format(new Date());
		yb.setBegintime(date);
		DhwEmpTab usera=(DhwEmpTab)request.getSession().getAttribute("user");
		yb.setTwoperson(usera.getEmpname());
		int id=yb.getProjectid();
		firservice.updatetxm(id);
		firservice.twoxmm(yb);

	}
	/**
	 * 更新项目申请表的状态
	 * @param json
	 * @return
	 */
	@RequestMapping(value="/updatestatus")
	@ResponseBody
	public String update(@RequestBody String json){
		YxExamine ym=JSON.parseObject(json,YxExamine.class);
		return null;
		
	}
	/**
	 * 二次审核成功后，更新二次审核状态
	 * @param json
	 * @return
	 */
	@RequestMapping(value="/updatefinal")
	@ResponseBody
	public String updates(@RequestBody String json){
		YxFirsttable yx=JSON.parseObject(json,YxFirsttable.class);
		return null;
	}
	
	/**
	 * 插入到发布表
	 * @param json
	 * @return
	 */
	@RequestMapping(value="/addfa")
	@ResponseBody
	public int addfafa(@RequestBody String json){
		YxFabu yf=JSON.parseObject(json,YxFabu.class);
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String date=simpleDateFormat.format(new Date());
		System.out.println(date);
		yf.setBegintime(date);
		int id=yf.getProjectid();
		firservice.updatefina(id);
		System.out.println(id+"id");
		int flag=firservice.addfa(yf);
		return flag;
	
	}
	/**
	 * 发布项目成功后，更新项目状态
	 * @param json
	 * @return
	 */
	@RequestMapping(value="/updatefstatus")
	@ResponseBody
	public String updatefin(@RequestBody String json){
		YxFinaltable yf=JSON.parseObject(json,YxFinaltable.class);
		return null;
		
	}
	/**
	 * 更新发布状态
	 * @param json
	 * @return
	 */
	@RequestMapping(value="updatex")
	@ResponseBody
	public String updatexx(@RequestBody String json){
		YxFabu yf=JSON.parseObject(json,YxFabu.class);
		return null;
	}
	/**
	 * 项目下架
	 * @param id
	 * @param request
	 */
	@RequestMapping("/xiajia")
	@ResponseBody
	public void xiajia(int id,HttpServletRequest request){
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String date=simpleDateFormat.format(new Date());
		firservice.updatexiajia(date, id);
		firservice.updatefinalstatu(id);
		List<Map> list=firservice.selmoney(id);
		String count=list.get(0).get("LIFELOAN").toString();
		int cishu=Integer.parseInt(count);
		String money=list.get(0).get("NOWMONEY").toString();
		double qian=Double.valueOf(money).doubleValue();
		String ratemoney=list.get(0).get("RATEMONEY").toString();
		double lilv=Double.valueOf(ratemoney).doubleValue();
		System.out.println(qian+"***********"+lilv);
		if (qian>0) {
			for (int i = 0; i < cishu; i++) {
				double money1=i*qian/cishu;
				double money2=(qian-money1)*lilv;
				double money39=money2+qian/cishu;
				DecimalFormat df = new DecimalFormat("#.##");
				double money3 = Double.parseDouble(df.format(money39));
				double money4=qian*0.01;
				if (i==0) {
					int userid=zxluserservice.seluser(id);
					int usermoney=zxluserservice.seljinqian(userid);
					double usermoney1=usermoney-money4;
					String name=zxluserservice.selusername(userid);
					zxluserservice.updatemoney(usermoney1, name);
					zhishouservices.addshouru(id, date, money4);
					int total=zhishouservices.querytotalmoney();
					double totalmoney=total+money4;
					int totalmon=(int) totalmoney;
					firservice.updatetotalmoney(totalmon);
					money3=money3+money4;
				}
				System.out.println(money3);
				Calendar c=Calendar.getInstance();
				c.setTime(new Date());
				c.add(Calendar.MONTH,i+1); //将当前日期加一个月
				String validityDate=simpleDateFormat.format(c.getTime());  //返回String型的时间
				firservice.addhuankuan(id, validityDate, qian, lilv, money3);
			}
			List<Map> mans=firservice.selfangman(id);
			for (int i = 0; i < mans.size(); i++) {
				String mony=mans.get(i).get("MONEY").toString();
				String userid=mans.get(i).get("INVESTORID").toString();
				int uid=Integer.parseInt(userid);
				double moy=Double.valueOf(mony).doubleValue();
				for (int j = 0; j < cishu; j++) {
					double jinee=moy/cishu+(moy-j*moy/cishu)*lilv;
					DecimalFormat df = new DecimalFormat("#.##");
					double jine = Double.parseDouble(df.format(jinee));
					Calendar c=Calendar.getInstance();
					c.setTime(new Date());
					c.add(Calendar.MONTH,j+1); //将当前日期加一个月
					String validityDate=simpleDateFormat.format(c.getTime());
					firservice.addshoukuan(uid, id, validityDate, jine, lilv, moy);
				}
				
			}
		}
		
	}
	@RequestMapping("/huankuana")
	@ResponseBody
	public void huankuan(){
		System.out.println("***********************");
	}
}
