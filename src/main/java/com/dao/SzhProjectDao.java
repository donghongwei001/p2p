package com.dao;

import java.util.List;

import com.entity.SzhProject;

public interface SzhProjectDao {
	public List<SzhProject> queryProject();
	public List<SzhProject> queryPart();
}
