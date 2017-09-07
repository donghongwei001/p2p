package com.serviceimpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.DhwrolepowerDao;
import com.entity.Power;
import com.service.Dhwrolepowerservice;
@Service
public class Dhwrolepowerimpl implements Dhwrolepowerservice {

	@Autowired
	private DhwrolepowerDao dhwrolepower;
	@Override
	public List<Map> queryPower() {
		// TODO Auto-generated method stub
		return dhwrolepower.queryPower();
	}
	@Override
	public List<Map> querypid() {
		// TODO Auto-generated method stub
		return dhwrolepower.querypid();
	}
	@Override
	public Integer addpower(Power power) {
		// TODO Auto-generated method stub
		return dhwrolepower.addpower(power);
	}
	@Override
	public void deletepower(String id) {
		// TODO Auto-generated method stub
		dhwrolepower.deletepower(id);
	}
	@Override
	public List<Map> selonepower(String id) {
		// TODO Auto-generated method stub
		return dhwrolepower.selonepower(id);
	}
	@Override
	public void updatepower(Power power) {
		// TODO Auto-generated method stub
		dhwrolepower.updatepower(power);
	}
	@Override
	public List<Map> selpower(String id) {
		// TODO Auto-generated method stub
		return dhwrolepower.selpower(id);
	}

}
