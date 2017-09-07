package com.serviceimpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.YxExamineDao;
import com.entity.Outtime;
import com.entity.YxExamine;
import com.entity.YxFirst;
import com.service.YxExamineService;


@Service
public class YxExamineServiceImpl implements YxExamineService{
	@Autowired
	private YxExamineDao yxdao;
	//查询第一次要审核的项目
	@Override
	public List<YxExamine> queryexam() {
		// TODO Auto-generated method stub
		return yxdao.queryAll();
	}
	//查询逾期的项目
	@Override
	public List<Outtime> queryx() {
		// TODO Auto-generated method stub
		return yxdao.queryxm();
	}
	//查询需要二次审核的项目
	@Override
	public List<YxFirst> queryftt() {
		// TODO Auto-generated method stub
		return yxdao.queryft();
	}
	//二次审核时查看项目详情
	@Override
	public List<Map> queryss(int id) {
		// TODO Auto-generated method stub
		return yxdao.querylm(id);
	}
	@Override
	public List<Map> queryfa() {
		// TODO Auto-generated method stub
		return yxdao.queryfabu();
	}


}
