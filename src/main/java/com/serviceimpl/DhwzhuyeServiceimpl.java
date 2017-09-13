package com.serviceimpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.DhwzhuyeDao;
import com.service.DhwzhuyeService;
@Service
public class DhwzhuyeServiceimpl implements DhwzhuyeService {

	@Autowired
	private DhwzhuyeDao dhwzhudao;
	@Override
	public List<Map> selectdemo() {
		// TODO Auto-generated method stub
		return dhwzhudao.selectdemo();
	}
	@Override
	public List<Map> selfabu() {
		// TODO Auto-generated method stub
		return dhwzhudao.selfabu();
	}
	@Override
	public List<Map> selstatu() {
		// TODO Auto-generated method stub
		return dhwzhudao.selstatu();
	}
	@Override
	public int selday() {
		// TODO Auto-generated method stub
		return dhwzhudao.selday();
	}
	@Override
	public int selbody() {
		// TODO Auto-generated method stub
		return dhwzhudao.selbody();
	}
	@Override
	public List<Map> seltouzi() {
		// TODO Auto-generated method stub
		return dhwzhudao.seltouzi();
	}
	@Override
	public List<Map> selonetouzi(String name) {
		// TODO Auto-generated method stub
		return dhwzhudao.selonetouzi(name);
	}
	

}
