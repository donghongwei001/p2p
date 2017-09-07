package com.service;

import java.util.List;
import java.util.Map;

import com.entity.YpgEmployee;
import com.entity.ypgPersonalForm;

public interface ypgPersonalFormService {
	public List<Map> getQueryPersonalForm(int userID);
	public int getPersonalForm(ypgPersonalForm pff);
	public int UpdatePersonalForm(ypgPersonalForm pff);
	public int getInsertEmployee(YpgEmployee ee);
	public List<Map> getQueryEmployee();
}
