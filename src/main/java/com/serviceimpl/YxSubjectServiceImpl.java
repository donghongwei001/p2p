package com.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.YxSubjecttypeDao;
import com.entity.YxSubjecttype;
import com.service.YxSubjectService;

@Service
public class YxSubjectServiceImpl implements YxSubjectService{
	@Autowired
	private YxSubjecttypeDao subdao;
	@Override
	public int addsubjecttype(YxSubjecttype sub) {
		// TODO Auto-generated method stub
		
		return subdao.addsubject(sub);
	}

}
