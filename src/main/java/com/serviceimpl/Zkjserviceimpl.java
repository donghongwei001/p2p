package com.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.Zkjdao;
import com.entity.Zkjproject;
import com.service.Zkjservicedao;
@Service
public class Zkjserviceimpl implements Zkjservicedao {
	@Autowired
	private Zkjdao dao;
	@Override
	public void saveproject(Zkjproject pp) {
		// TODO Auto-generated method stub
		dao.saveproject(pp);
	}

}
