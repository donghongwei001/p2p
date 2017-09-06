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
	//��ѯ��һ��Ҫ��˵���Ŀ
	@Override
	public List<YxExamine> queryexam() {
		// TODO Auto-generated method stub
		return yxdao.queryAll();
	}
	//��ѯ���ڵ���Ŀ
	@Override
	public List<Outtime> queryx() {
		// TODO Auto-generated method stub
		return yxdao.queryxm();
	}
	//��ѯ��Ҫ������˵���Ŀ
	@Override
	public List<YxFirst> queryftt() {
		// TODO Auto-generated method stub
		return yxdao.queryft();
	}
	//�������ʱ�鿴��Ŀ����
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
