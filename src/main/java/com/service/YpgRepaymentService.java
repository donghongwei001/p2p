package com.service;

import java.util.List;
import java.util.Map;

public interface YpgRepaymentService {
	//还款表
	public List<Map> queryRepayment();
	//投标表
	public List<Map> queryPublish();
	//投标详细信息查询
	public List<Map> queryMinute();
}
