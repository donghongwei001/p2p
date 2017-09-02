package com.serviceimpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.ypgPersonalFormDao;
import com.entity.YpgEmployee;
import com.entity.ypgPersonalForm;
import com.service.ypgPersonalFormService;

@Service
public class ypgPersonalFormImpl implements ypgPersonalFormService{
	@Autowired
	private ypgPersonalFormDao pfDao;
	
	@Override
	public List<Map> getQueryPersonalForm() {
		// TODO Auto-generated method stub
		return pfDao.queryPersonalForm();
	}
	
	@Override
	public int getPersonalForm(ypgPersonalForm pf) {
		// TODO Auto-generated method stub
		return pfDao.insertPersonalForm(pf);
	}

	@Override
	public List<Map> getQueryEmployee() {
		// TODO Auto-generated method stub
		return pfDao.queryEmployee();
	}

	@Override
	public int getInsertEmployee(YpgEmployee ee) {
		// TODO Auto-generated method stub
		return pfDao.insertEmployee(ee);
	}

	
}
