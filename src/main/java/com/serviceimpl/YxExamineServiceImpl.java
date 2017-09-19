package com.serviceimpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.YxExamineDao;
import com.entity.Fabu;
import com.entity.Outtime;
import com.service.YxExamineService;


@Service
public class YxExamineServiceImpl implements YxExamineService{
	@Autowired
	private YxExamineDao yxdao;
	/**
	 * 查询第一次要审核的项目
	 */
	@Override
	public List<Map> queryexam() {
		// TODO Auto-generated method stub
		return yxdao.queryAll();
	}
	/**
	 * 查询逾期的项目
	 */
	@Override
	public List<Outtime> queryx() {
		// TODO Auto-generated method stub
		return yxdao.queryxm();
	}
	/**
	 * 查询需要二次审核的项目
	 */
	@Override
	public List<Map> queryftt() {
		// TODO Auto-generated method stub
		return yxdao.queryft();
	}
	/**
	 * 二次审核时查看项目详情
	 */
	@Override
	public List<Map> queryss(int id) {
		// TODO Auto-generated method stub
		return yxdao.querylm(id);
	}
	/**
	 * 查询需要发布的项目
	 */
	@Override
	public List<Map> queryfa() {
		// TODO Auto-generated method stub
		return yxdao.queryfabu();
	}
	/**
	 * 查询第一次审核没通过的
	 */
	@Override
	public List<Map> querynotone() {
		// TODO Auto-generated method stub
		return yxdao.querynot();
	}
	/**
	 * 查询第二次审核没通过的
	 */
	@Override
	public List<Map> querytwo() {
		// TODO Auto-generated method stub
		return yxdao.querynottwo();
	}
	/**
	 * id查用户信息
	 */
	@Override
	public List<Map> queryuserid(int id) {
		// TODO Auto-generated method stub
		return yxdao.queryuser(id);
	}
	/**
	 * id查详情
	 */
	@Override
	public List<Map> queryf(int id) {
		// TODO Auto-generated method stub
		return yxdao.queryfirst(id);
	}
	/**
	 * 发布中，下架的项目，查看详情
	 */
	@Override
	public List<Map> queryde(int id) {
		// TODO Auto-generated method stub
		return yxdao.queryremove(id);
	}

}
