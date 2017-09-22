package com.serviceimpl;

import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.zhishouDao;
import com.service.zhishouservice;
@Service
public class zhishouserviceimpl implements zhishouservice{

	@Autowired
	private zhishouDao zhishoudao;
	/*
	 * (non-Javadoc)
	 * @see com.service.zhishouservice#querytotalmoney()
	 * 查询总金额
	 */
	@Override
	@Transactional
	public int querytotalmoney() {
		// TODO Auto-generated method stub
		return zhishoudao.querytotalmoney();
	}
	/*
	 * (non-Javadoc)
	 * @see com.service.zhishouservice#addshouru(int, java.lang.String, double)
	 * 增加收入记录
	 */
	@Override
	@Transactional
	public void addshouru(int id, String date, double money) {
		// TODO Auto-generated method stub
		zhishoudao.addshouru(id, date, money);
	}
	/*
	 * (non-Javadoc)
	 * @see com.service.zhishouservice#addzhichu(int, java.lang.String, double)
	 * 增加支出记录
	 */
	@Override
	@Transactional
	public void addzhichu(int id, String date, double money) {
		// TODO Auto-generated method stub
		zhishoudao.addzhichu(id, date, money);
	}
	/*
	 * (non-Javadoc)
	 * @see com.service.zhishouservice#selshouzhi()
	 * 查询所有的收支
	 */
	@Override
	@Transactional
	public List<Map> selshouzhi() {
		// TODO Auto-generated method stub
		List<Map> list=zhishoudao.selshouzhi();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		for (int i = 0; i < list.size(); i++) {
			String time=simpleDateFormat.format(list.get(i).get("TIME"));
			list.get(i).put("time1", time);
			
		}
		return list;
	}
	/*
	 * (non-Javadoc)
	 * @see com.service.zhishouservice#selyuqi(java.lang.String)
	 * 查询该用户所有的预期记录
	 */
	@Override
	@Transactional
	public List<Map> selyuqi(String name) {
		// TODO Auto-generated method stub
		DecimalFormat df = new DecimalFormat("#.##");
		List<Map> list=zhishoudao.selyuqi(name);
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		for (int i = 0; i < list.size(); i++) {
			String time=simpleDateFormat.format(list.get(i).get("LASTTIME"));
			list.get(i).put("time1", time);
			Object dd=list.get(i).get("NEWTIME");
			if (dd==null||dd=="") {
				String newdate=simpleDateFormat.format(new Date());
				try {
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
				} catch (Exception e) {
					// TODO: handle exception
				}
				
				
			}
			
			
			
			
		}
		return list;
	}
	/*
	 * (non-Javadoc)
	 * @see com.service.zhishouservice#updatenew(java.lang.String, int, double, int, double)
	 * 还款逾期金额
	 */
	@Override
	@Transactional
	public void updatenew(String date, int day, double money, int id, double qian) {
		// TODO Auto-generated method stub
		zhishoudao.updatenew(date, day, money, id, qian);
	}
	/*
	 * (non-Javadoc)
	 * @see com.service.zhishouservice#seltime(int, double)
	 * 查询逾期时间
	 */
	@Override
	@Transactional
	public String seltime(int id, double money) {
		// TODO Auto-generated method stub
		return zhishoudao.seltime(id, money);
	}
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
}
