package com.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.ypgPersonalFormDao;
import com.entity.ypgPersonalForm;
import com.service.ypgPersonalFormService;

@Service
public class ypgPersonalFormImpl implements ypgPersonalFormService{
	@Autowired
	private ypgPersonalFormDao pfDao;
	
	@Override
	public int getPersonalForm(ypgPersonalForm pf) {
		// TODO Auto-generated method stub
		return pfDao.insertPersonalForm(pf);
	}
	
}
