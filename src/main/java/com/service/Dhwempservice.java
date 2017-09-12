package com.service;

import java.util.List;
import java.util.Map;

import com.entity.DhwEmpTab;

public interface Dhwempservice {
	public List<Map> queryemp();
	public List<Map> selemp(String name);
	public void addemp(DhwEmpTab empTab);
	public void deleteemp(int id);
	public void deleteemprole(int id);
	public List<Map> seloneemp(int id);
	public void updateemp(DhwEmpTab empTab);
	public List<Map> selemprole(int id);
	public void addemprole(int id1,String id);
}
