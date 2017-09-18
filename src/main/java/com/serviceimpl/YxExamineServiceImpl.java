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
	 * ��ѯ��һ��Ҫ��˵���Ŀ
	 */
	@Override
	public List<Map> queryexam() {
		// TODO Auto-generated method stub
		return yxdao.queryAll();
	}
	/**
	 * ��ѯ���ڵ���Ŀ
	 */
	@Override
	public List<Outtime> queryx() {
		// TODO Auto-generated method stub
		return yxdao.queryxm();
	}
	/**
	 * ��ѯ��Ҫ������˵���Ŀ
	 */
	@Override
	public List<Map> queryftt() {
		// TODO Auto-generated method stub
		return yxdao.queryft();
	}
	/**
	 * �������ʱ�鿴��Ŀ����
	 */
	@Override
	public List<Map> queryss(int id) {
		// TODO Auto-generated method stub
		return yxdao.querylm(id);
	}
	/**
	 * ��ѯ��Ҫ��������Ŀ
	 */
	@Override
	public List<Map> queryfa() {
		// TODO Auto-generated method stub
		return yxdao.queryfabu();
	}
	/**
	 * ��ѯ��һ�����ûͨ����
	 */
	@Override
	public List<Map> querynotone() {
		// TODO Auto-generated method stub
		return yxdao.querynot();
	}
	/**
	 * ��ѯ�ڶ������ûͨ����
	 */
	@Override
	public List<Map> querytwo() {
		// TODO Auto-generated method stub
		return yxdao.querynottwo();
	}
	/**
	 * id���û���Ϣ
	 */
	@Override
	public List<Map> queryuserid(int id) {
		// TODO Auto-generated method stub
		return yxdao.queryuser(id);
	}
	/**
	 * id������
	 */
	@Override
	public List<Map> queryf(int id) {
		// TODO Auto-generated method stub
		return yxdao.queryfirst(id);
	}
	/**
	 * �����У��¼ܵ���Ŀ���鿴����
	 */
	@Override
	public List<Map> queryde(int id) {
		// TODO Auto-generated method stub
		return yxdao.queryremove(id);
	}

}
