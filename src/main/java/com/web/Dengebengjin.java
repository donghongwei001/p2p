package com.web;

import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.Map;

public class Dengebengjin {
	/**  
     * �ȶ������ȡ���ʽΪ�ȶ���ÿ�³����������Ϣ  
     *   
     * ��ʽ��ÿ�³�������=(�����»�������)+(�����-�ѹ黹�����ۼƶ�)��������  
     *   
     * @param invest  
     *            �ܽ�������  
     * @param yearRate  
     *            ������  
     * @param month  
     *            ����������  
     * @return ÿ�³����������Ϣ,���������룬ֱ�ӽ�ȡС���������λ  
     */  
    public static Map<Integer, Double> getPerMonthPrincipalInterest(double invest, double yearRate, int totalMonth) {  
        Map<Integer, Double> map = new HashMap<Integer, Double>();  
        // ÿ�±���  
        double monthPri = getPerMonthPrincipal(invest, totalMonth);  
        // ��ȡ������  
        double monthRate = yearRate / 12;  
        DecimalFormat df= new DecimalFormat("#.00");
        monthRate = new BigDecimal(monthRate).setScale(6, BigDecimal.ROUND_HALF_UP).doubleValue();  
        for (int i = 1; i <= totalMonth; i++) {  
            double monthRes = monthPri + (invest - monthPri * (i - 1)) * monthRate;  
           
            monthRes = new BigDecimal(monthRes).setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue();  
           
            double dc =Double.parseDouble(df.format(monthRes));
            map.put(i, dc);  
        }  
        return map;  
    }  
  
    /**  
     * �ȶ������ȡ���ʽΪ�ȶ���ÿ�³�����Ϣ  
     *   
     * ��ʽ��ÿ��Ӧ����Ϣ=ʣ�౾���������=(�����-�ѹ黹�����ۼƶ�)��������  
     *   
     * @param invest  
     *            �ܽ�������  
     * @param yearRate  
     *            ������  
     * @param month  
     *            ����������  
     * @return ÿ�³�����Ϣ  
     */   
    public static Map<Integer, Double> getPerMonthInterest(double invest, double yearRate, int totalMonth) {  
        Map<Integer, Double> inMap = new HashMap<Integer, Double>();  
        double principal = getPerMonthPrincipal(invest, totalMonth);  
        Map<Integer, Double> map = getPerMonthPrincipalInterest(invest, yearRate, totalMonth);  
        for (Map.Entry<Integer, Double> entry : map.entrySet()) {  
            BigDecimal principalBigDecimal = new BigDecimal(principal);  
            BigDecimal principalInterestBigDecimal = new BigDecimal(entry.getValue());  
            BigDecimal interestBigDecimal = principalInterestBigDecimal.subtract(principalBigDecimal);  
            interestBigDecimal = interestBigDecimal.setScale(2, BigDecimal.ROUND_HALF_UP);  
            inMap.put(entry.getKey(), interestBigDecimal.doubleValue());  
        }  
        return inMap;  
    }  
  
    /**  
     * �ȶ������ȡ���ʽΪ�ȶ���ÿ�³�������  
     *   
     * ��ʽ��ÿ��Ӧ������=�����»�������  
     *   
     * @param invest  
     *            �ܽ�������  
     * @param yearRate  
     *            ������  
     * @param month  
     *            ����������  
     * @return ÿ�³�������  
     */  
    public static double getPerMonthPrincipal(double invest, int totalMonth) {  
        BigDecimal monthIncome = new BigDecimal(invest).divide(new BigDecimal(totalMonth), 6, BigDecimal.ROUND_HALF_UP);  
        return monthIncome.doubleValue();  
    }  
  
    /**  
     * �ȶ������ȡ���ʽΪ�ȶ�������Ϣ  
     *   
     * @param invest  
     *            �ܽ�������  
     * @param yearRate  
     *            ������  
     * @param month  
     *            ����������  
     * @return ����Ϣ  
     */  
    public  double getInterestCount(double invest, double yearRate, int totalMonth) {  
        BigDecimal count = new BigDecimal(0);  
        Map<Integer, Double> mapInterest = getPerMonthInterest(invest, yearRate, totalMonth);  
  
        for (Map.Entry<Integer, Double> entry : mapInterest.entrySet()) {  
            count = count.add(new BigDecimal(entry.getValue()));  
        }  
        return count.doubleValue();  
    }  
}
