package com.dao;

import java.util.List;

import com.entity.SzhProject;

public interface SzhProjectDao {
	public List<SzhProject> queryProject();
	public List<SzhProject> queryPart(String comname);
	public List<SzhProject> queryUser(String user);
	public List<SzhProject> queryTime(String zzz,String hhh);
}
