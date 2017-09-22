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
	 * ����
	 */
	@Override
	public List<Map> queryRepayment() {
		// TODO Auto-generated method stub
		return reDao.queryRepayment();
	}

	/**
	 * ����ƻ���
	 */
	@Override
	public List<Map> querySchedule(int id) {
		// TODO Auto-generated method stub
		return reDao.querySchedule(id);
	}

	/**
	 * ƽ̨�ֶ����������
	 */
	@Override
	public List<Map> queryProblems(Ypg yy) {
		List<Map> queryList=reDao.queryProblems(yy.getId());
		for(int i=0;i<queryList.size();i++){
			Dengebengjin dbj=new Dengebengjin();
			//System.out.println(queryList.get(i).get("MONEY")+"-=-=-=-=-=-=");

			//����
			double inMoney=(double) queryList.get(i).get("MONEY");
			Object  totleLo=queryList.get(i).get("LIFELOAN"); //����
			//����
			int totleloan=Integer.parseInt(totleLo.toString()); 
			//System.out.println(queryList.get(i).get("LIFELOAN")+"    totleLoan");

			//������
			double yearRate=(double) queryList.get(i).get("RATEMONEY")*12;
			//�û�ԭ�е�Ǯ
			double usermoney=(double) queryList.get(i).get("USERMONEY");
			//System.out.println(usermoney + "ԭ��Ǯ��");
			Map<Integer,Double> usermonthMoney= dbj.getPerMonthPrincipalInterest(inMoney, yearRate, totleloan);  //�û�ÿ�»��� ��Ǯ��

			//ƽ̨��Ǯ��
			String ss=queryList.get(i).get("TOTALMONEY").toString();
			//System.out.println(ss + "  ss");
			double total=Double.valueOf(ss).doubleValue();
			BigDecimal   original   =   new   BigDecimal(total);   
			BigDecimal   result   =   original.setScale(9,   BigDecimal.ROUND_HALF_DOWN);  
			double dou = result.doubleValue();
			//System.out.println(dou + " totalMon");

			//�û�ÿ�±�Ϣ
			double totalM=usermonthMoney.get(yy.getRow2());
			double Tmoney=inMoney*0.01;
			//System.out.println(Tmoney + "  Tomoney");
			double totalM2=totalM+Tmoney;
			//System.out.println(" ��һ���µ�" +totalM2 );

			//�û��˻�����Ǯ
			double usertotalmoney=usermoney+totalM;
			//System.out.println(usertotalmoney);
			//System.out.println(totalM + " totalM");

			//ƽ̨ʣ���ܶ�
			Double totalMoney=total-totalM;  
			//System.out.println(totalMoney);
			//System.out.println(dbj.getPerMonthPrincipalInterest(inMoney, yearRate, totleloan));
			//System.out.println(usermonthMoney.get(yy.getRow2())+" ��Ǯ��");
			//System.out.println(usertotalmoney);

			//�û�ID
			int userid=Integer.parseInt(queryList.get(i).get("INVESTORID").toString());	
			//System.out.println(userid);
			//System.out.println(yy.getTime2());
			//System.out.println(yy.getId());

			//�����û���Ǯ��
			YpgUsermoney yu=new YpgUsermoney(); 
			yu.setUserid(userid);
			yu.setUsertotalmoney(usertotalmoney);
			reDao.updateUserMoney(yu);

			//����ƽ̨��Ǯ��
			reDao.updateTotalMoney(totalMoney);

			//���뵽���ڱ�
			YpgUsermoney ypg=new YpgUsermoney();
			ypg.setSubjectid(yy.getId());
			if(yy.getRow2()==1){
				ypg.setTotalM(totalM2);
			}else{
				ypg.setTotalM(totalM);
			}
			ypg.setTime2(yy.getTime2());
			reDao.insertOutTimeTable(ypg);

			//�����տ��״̬shoukuantable
			YpgUsermoney ypgshoukuan=new YpgUsermoney();
			ypgshoukuan.setSubjectid(yy.getId());
			ypgshoukuan.setTime2(yy.getTime2());
			reDao.updateShouKuanTable(ypgshoukuan);

			//����ÿ�»���״̬
			YpgUsermoney ypgrepayschedule=new YpgUsermoney();
			ypgrepayschedule.setSubjectid(yy.getId());
			ypgrepayschedule.setTime2(yy.getTime2());
			reDao.updateRepaySchedule(ypgrepayschedule);

			//���뵽����֧����
			Calendar c = Calendar.getInstance();
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");//���ڸ�ʽ��ת��
			c  =  Calendar.getInstance(Locale.CHINESE);	//ʹ��Ŀǰ��ʱ����ָ�����Ի����ķ����õ�һ������ ,locale -- ���Ի�������������
			System.out.println(simpleDateFormat.format(c.getTime()));//���������ʽ 2008-03-12    

			YpgUsermoney ypgExpendincome=new YpgUsermoney();
			ypgExpendincome.setSubjectid(yy.getId());
			ypgExpendincome.setNewTime(simpleDateFormat.format(c.getTime()));
			ypgExpendincome.setTotalM(totalM);
			reDao.insertExpendincome(ypgExpendincome);

		}
		return null;
	}

	/**
	 * ���ڻ���
	 */
	@Override
	public List<Map> selectOutTimetable() {
		// TODO Auto-generated method stub
		return reDao.selectOutTimetable();
	}
	/**
	 * ���ڱ��ģ����ѯ
	 */
	@Override
	public List<Map> queryOutTimetable(String comname) {
		// TODO Auto-generated method stub
		return reDao.queryOutTimetable(comname);
	}

}
