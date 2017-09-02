package com.service;

import java.util.List;
import java.util.Map;

import com.entity.YpgEmployee;
import com.entity.ypgPersonalForm;

public interface ypgPersonalFormService {
	public List<Map> getQueryPersonalForm();
	public List<Map> getQueryEmployee();
	public int getPersonalForm(ypgPersonalForm pff);
	public int getInsertEmployee(YpgEmployee ee);
}
