package com.dao;


import java.util.List;
import java.util.Map;

import com.entity.ypgPersonalForm;

public interface ypgPersonalFormDao {
	public List<Map> queryPersonalForm();
	public int insertPersonalForm(ypgPersonalForm pf);
	
}
