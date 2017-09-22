package com.serviceimpl;

import java.util.List;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.DhwempDao;
import com.entity.DhwEmpTab;
import com.service.Dhwempservice;
@Service
public class Dhwempimpl implements Dhwempservice {

	@Autowired
	private DhwempDao dhwempdao;
	@Override
	@Transactional
	public List<Map> queryemp() {
		// TODO Auto-generated method stub
		return dhwempdao.queryemp();
	}
	@Override
	@Transactional
	public List<Map> selemp(String name) {
		// TODO Auto-generated method stub
		return dhwempdao.selemp(name);
	}
	@Override
	@Transactional
	public void addemp(DhwEmpTab empTab) {
		// TODO Auto-generated method stub
		dhwempdao.addemp(empTab);
	}
	@Override
	@Transactional
	public void deleteemp(int id) {
		// TODO Auto-generated method stub
		dhwempdao.deleteemp(id);
	}
	@Override
	@Transactional
	public void deleteemprole(int id) {
		// TODO Auto-generated method stub
		dhwempdao.deleteemprole(id);
	}
	@Override
	@Transactional
	public List<Map> seloneemp(int id) {
		// TODO Auto-generated method stub
		return dhwempdao.seloneemp(id);
	}
	@Override
	@Transactional
	public void updateemp(DhwEmpTab empTab) {
		// TODO Auto-generated method stub
		dhwempdao.updateemp(empTab);
	}
	@Override
	@Transactional
	public List<Map> selemprole(int id) {
		// TODO Auto-generated method stub
		return dhwempdao.selemprole(id);
	}
	@Override
	@Transactional
	public void addemprole(int id1, String id) {
		// TODO Auto-generated method stub
		dhwempdao.addemprole(id1, id);
	}
	

}
