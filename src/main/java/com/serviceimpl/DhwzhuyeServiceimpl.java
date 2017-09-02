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

}
