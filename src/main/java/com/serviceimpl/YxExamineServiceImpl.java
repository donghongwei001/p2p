package com.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.YxExamineDao;
import com.entity.YxExamine;
import com.service.YxExamineService;


@Service
public class YxExamineServiceImpl implements YxExamineService{
	@Autowired
	private YxExamineDao yxdao;
	@Override
	public List<YxExamine> queryexam() {
		// TODO Auto-generated method stub
		return yxdao.queryAll();
	}

}
