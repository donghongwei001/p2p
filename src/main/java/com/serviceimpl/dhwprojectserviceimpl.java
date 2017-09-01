package com.serviceimpl;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

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
	public List<Map> queryprojecttwo(String s1, String s2) {
		// TODO Auto-generated method stub
		return dhwprojectdao.queryprojecttwo(s1, s2);
	}

}
