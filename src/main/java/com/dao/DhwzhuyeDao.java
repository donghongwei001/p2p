package com.dao;

import java.util.List;
import java.util.Map;

public interface DhwzhuyeDao {
	public List<Map> selectdemo();
	public List<Map> selfabu();
	public List<Map> selstatu();
	public int selday();
	public int selbody();
	public List<Map> seltouzi();
	public List<Map> selonetouzi(String name);
}
