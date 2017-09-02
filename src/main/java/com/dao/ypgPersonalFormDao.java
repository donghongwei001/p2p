package com.dao;


import java.util.List;
import java.util.Map;

import com.entity.ypgEmployee;
import com.entity.ypgPersonalForm;

public interface ypgPersonalFormDao {
	public List<Map> queryPersonalForm();
	public List<Map> queryEmployee();
	public int insertPersonalForm(ypgPersonalForm pf);
	public int insertEmployee(ypgEmployee ee);
}
