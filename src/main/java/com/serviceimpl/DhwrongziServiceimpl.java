package com.serviceimpl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.dhwrongziDao;
import com.service.DhwrongziService;

@Service
public class DhwrongziServiceimpl implements DhwrongziService {

	@Autowired
	private dhwrongziDao dhwrongzidao;
	@Override
	@Transactional
	public List<Map> queryall() {
		// TODO Auto-generated method stub
		return dhwrongzidao.queryall();
	}
	@Override
	@Transactional
	public List<Map> queryprojectone(String  str) {
		// TODO Auto-generated method stub
		return dhwrongzidao.queryprojectone(str);
	}
	@Override
	@Transactional
	public List<Map> queryprojecttwo(Date str1, Date str2) {
		// TODO Auto-generated method stub
		return dhwrongzidao.queryprojecttwo(str1, str2);
	}
	@Override
	@Transactional
	public List<Map> queryprojectthr(Date str1, Date str2, String str3) {
		// TODO Auto-generated method stub
		return dhwrongzidao.queryprojectthr(str1, str2, str3);
	}
	@Override
	@Transactional
	public List<Map> selxiangqing(int id) {
		// TODO Auto-generated method stub
		return dhwrongzidao.selxiangqing(id);
	}
	

}
