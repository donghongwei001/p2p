package com.serviceimpl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.dhwprojectdao;
import com.service.dhwprojectService;

@Service
public class dhwprojectserviceimpl implements dhwprojectService {

	
	@Autowired
	private dhwprojectdao dhwprojectdao;
	@Override
	public List<Map> selectproject() {
		// TODO Auto-generated method stub
		return dhwprojectdao.selectproject();
	}
	
	@Override
	public List<Map> queryprojectone(String str) {
		// TODO Auto-generated method stub
		return dhwprojectdao.queryprojectone(str);
	}
	@Override
	public List<Map> queryprojecttwo(Date s1, Date s2) {
		// TODO Auto-generated method stub
		return dhwprojectdao.queryprojecttwo(s1, s2);
	}

	@Override
	public List<Map> queryall(Date s1, Date s2, String name) {
		// TODO Auto-generated method stub
		return dhwprojectdao.queryall(s1, s2, name);
	}

}
