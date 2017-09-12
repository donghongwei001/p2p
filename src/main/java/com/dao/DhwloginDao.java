package com.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.entity.DhwEmpTab;



public interface DhwloginDao {
	public DhwEmpTab queryUser(String user);
	public List<HashMap<String,Object>> queryrolepower(DhwEmpTab dd);
	public String queryrolename(int id);
	public int querycount();
}
