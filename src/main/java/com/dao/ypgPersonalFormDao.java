package com.dao;


import java.util.List;
import java.util.Map;

import com.entity.YpgEmployee;
import com.entity.ypgPersonalForm;

public interface ypgPersonalFormDao {
	public List<Map> queryPersonalForm(int userID);
	public int insertPersonalForm(ypgPersonalForm pf);
	public int updatePersonalForm(ypgPersonalForm pf);
	
	public int insertEmployee(YpgEmployee ee);
	public List<Map> queryEmployee();
}
