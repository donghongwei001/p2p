package com.serviceimpl;

import java.math.BigDecimal;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.YpgRepaymentDao;
import com.entity.Ypg;
import com.entity.YpgUsermoney;
import com.service.YpgRepaymentService;
import com.web.Dengebengjin;

@Service
public class YpgRepaymentImpl implements YpgRepaymentService{
	@Autowired
	private YpgRepaymentDao reDao;

	/**
	 * 还款
	 */
	@Override
	public List<Map> queryRepayment() {
		// TODO Auto-generated method stub
		return reDao.queryRepayment();
	}

	/**
	 * 还款计划表
	 */
	@Override
	public List<Map> querySchedule(int id) {
		// TODO Auto-generated method stub
		return reDao.querySchedule(id);
	}

	/**
	 * 平台手动代还款计算
	 */
	@Override
	public List<Map> queryProblems(Ypg yy) {
		List<Map> queryList=reDao.queryProblems(yy.getId());
		for(int i=0;i<queryList.size();i++){
			Dengebengjin dbj=new Dengebengjin();
			//System.out.println(queryList.get(i).get("MONEY")+"-=-=-=-=-=-=");

			//本金
			double inMoney=(double) queryList.get(i).get("MONEY");
			Object  totleLo=queryList.get(i).get("LIFELOAN"); //月数
			//月数
			int totleloan=Integer.parseInt(totleLo.toString()); 
			//System.out.println(queryList.get(i).get("LIFELOAN")+"    totleLoan");

			//年利率
			double yearRate=(double) queryList.get(i).get("RATEMONEY")*12;
			//用户原有的钱
			double usermoney=(double) queryList.get(i).get("USERMONEY");
			//System.out.println(usermoney + "原来钱数");
			Map<Integer,Double> usermonthMoney= dbj.getPerMonthPrincipalInterest(inMoney, yearRate, totleloan);  //用户每月还款 总钱数

			//平台总钱数
			String ss=queryList.get(i).get("TOTALMONEY").toString();
			//System.out.println(ss + "  ss");
			double total=Double.valueOf(ss).doubleValue();
			BigDecimal   original   =   new   BigDecimal(total);   
			BigDecimal   result   =   original.setScale(9,   BigDecimal.ROUND_HALF_DOWN);  
			double dou = result.doubleValue();
			//System.out.println(dou + " totalMon");

			//用户每月本息
			double totalM=usermonthMoney.get(yy.getRow2());
			double Tmoney=inMoney*0.01;
			//System.out.println(Tmoney + "  Tomoney");
			double totalM2=totalM+Tmoney;
			//System.out.println(" 第一个月的" +totalM2 );

			//用户账户里总钱
			double usertotalmoney=usermoney+totalM;
			//System.out.println(usertotalmoney);
			//System.out.println(totalM + " totalM");

			//平台剩余总额
			Double totalMoney=total-totalM;  
			//System.out.println(totalMoney);
			//System.out.println(dbj.getPerMonthPrincipalInterest(inMoney, yearRate, totleloan));
			//System.out.println(usermonthMoney.get(yy.getRow2())+" 总钱数");
			//System.out.println(usertotalmoney);

			//用户ID
			int userid=Integer.parseInt(queryList.get(i).get("INVESTORID").toString());	
			//System.out.println(userid);
			//System.out.println(yy.getTime2());
			//System.out.println(yy.getId());

			//更新用户总钱数
			YpgUsermoney yu=new YpgUsermoney(); 
			yu.setUserid(userid);
			yu.setUsertotalmoney(usertotalmoney);
			reDao.updateUserMoney(yu);

			//更新平台总钱数
			reDao.updateTotalMoney(totalMoney);

			//插入到逾期表
			YpgUsermoney ypg=new YpgUsermoney();
			ypg.setSubjectid(yy.getId());
			if(yy.getRow2()==1){
				ypg.setTotalM(totalM2);
			}else{
				ypg.setTotalM(totalM);
			}
			ypg.setTime2(yy.getTime2());
			reDao.insertOutTimeTable(ypg);

			//更新收款表状态shoukuantable
			YpgUsermoney ypgshoukuan=new YpgUsermoney();
			ypgshoukuan.setSubjectid(yy.getId());
			ypgshoukuan.setTime2(yy.getTime2());
			reDao.updateShouKuanTable(ypgshoukuan);

			//更新每月还款状态
			YpgUsermoney ypgrepayschedule=new YpgUsermoney();
			ypgrepayschedule.setSubjectid(yy.getId());
			ypgrepayschedule.setTime2(yy.getTime2());
			reDao.updateRepaySchedule(ypgrepayschedule);

			//插入到收入支出表
			Calendar c = Calendar.getInstance();
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");//日期格式的转换
			c  =  Calendar.getInstance(Locale.CHINESE);	//使用目前的时区和指定语言环境的方法得到一个日历 ,locale -- 语言环境的日历数据
			System.out.println(simpleDateFormat.format(c.getTime()));//输出这种形式 2008-03-12    

			YpgUsermoney ypgExpendincome=new YpgUsermoney();
			ypgExpendincome.setSubjectid(yy.getId());
			ypgExpendincome.setNewTime(simpleDateFormat.format(c.getTime()));
			ypgExpendincome.setTotalM(totalM);
			reDao.insertExpendincome(ypgExpendincome);

		}
		return null;
	}

	/**
	 * 逾期还款
	 */
	@Override
	public List<Map> selectOutTimetable() {
		// TODO Auto-generated method stub
		return reDao.selectOutTimetable();
	}
	/**
	 * 逾期表的模糊查询
	 */
	@Override
	public List<Map> queryOutTimetable(String comname) {
		// TODO Auto-generated method stub
		return reDao.queryOutTimetable(comname);
	}

}
