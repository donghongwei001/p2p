package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Power;

public interface DhwrolepowerDao {
	public List<Map> queryPower();
	public List<Map> querypid();
	public Integer addpower(Power power);
	public void deletepower(String id);
	public List<Map> selonepower(String id);
	public void updatepower(Power power);
	public List<Map> selpower(String id);
}
