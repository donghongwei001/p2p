package com.service;

import java.util.List;
import java.util.Map;

import com.entity.ypgPersonalForm;

public interface ypgPersonalFormService {
	public List<Map> getQueryPersonalForm();
	public int getPersonalForm(ypgPersonalForm pff);
}
