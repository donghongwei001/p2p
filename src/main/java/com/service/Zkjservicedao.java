package com.service;

import java.util.List;
import java.util.Map;

import com.entity.Zkjproject;

public interface Zkjservicedao {
	public void saveproject(Zkjproject pp);
	public List<Map> selectproject();
	public List<Map> selectusers();
}
