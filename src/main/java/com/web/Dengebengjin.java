package com.web;

import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.Map;

public class Dengebengjin {
	/**  
     * 等额本金计算获取还款方式为等额本金的每月偿还本金和利息  
     *   
     * 公式：每月偿还本金=(贷款本金÷还款月数)+(贷款本金-已归还本金累计额)×月利率  
     *   
     * @param invest  
     *            总借款额（贷款本金）  
     * @param yearRate  
     *            年利率  
     * @param month  
     *            还款总月数  
     * @return 每月偿还本金和利息,不四舍五入，直接截取小数点最后两位  
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
     * 等额本金计算获取还款方式为等额本金的每月偿还利息  
     *   
     * 公式：每月应还利息=剩余本金×月利率=(贷款本金-已归还本金累计额)×月利率  
     *   
     * @param invest  
     *            总借款额（贷款本金）  
     * @param yearRate  
     *            年利率  
     * @param month  
     *            还款总月数  
     * @return 每月偿还利息  
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
     * 等额本金计算获取还款方式为等额本金的每月偿还本金  
     *   
     * 公式：每月应还本金=贷款本金÷还款月数  
     *   
     * @param invest  
     *            总借款额（贷款本金）  
     * @param yearRate  
     *            年利率  
     * @param month  
     *            还款总月数  
     * @return 每月偿还本金  
     */  
    public static double getPerMonthPrincipal(double invest, int totalMonth) {  
        BigDecimal monthIncome = new BigDecimal(invest).divide(new BigDecimal(totalMonth), 6, BigDecimal.ROUND_HALF_UP);  
        return monthIncome.doubleValue();  
    }  
  
    /**  
     * 等额本金计算获取还款方式为等额本金的总利息  
     *   
     * @param invest  
     *            总借款额（贷款本金）  
     * @param yearRate  
     *            年利率  
     * @param month  
     *            还款总月数  
     * @return 总利息  
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
